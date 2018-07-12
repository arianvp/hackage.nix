{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "streaming";
          version = "0.1.0.18";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "what_is_it_to_do_anything@yahoo.com";
        author = "michaelt";
        homepage = "https://github.com/michaelt/streaming";
        url = "";
        synopsis = "a free monad transformer optimized for streaming applications with an elementary streaming prelude";
        description = "* __The free stream on a streamable functor__\n\n@Stream@ can be used wherever\n<https://hackage.haskell.org/package/free-4.12.1/docs/Control-Monad-Trans-Free.html FreeT>\nis used. The compiler's\nstandard range of optimizations work better for operations\nwritten in terms of `Stream`. @FreeT f m r@ / @Stream f m r@\nis of course extremely general, and many functor-general combinators\nare exported by the general module @Streaming@.\n\n* __The general idea of streaming__\n\nAs soon as you consider the idea of an effectful stream of any kind\nwhatsoever, for example, a stream of bytes from a handle, however\nconstituted, you will inevitably be forced to contemplate the\nidea of a streaming /succession/ of /such streams/. Thus, for example,\nhowever you imagine your bytes streaming from a handle,\nyou will want to consider a /succession/ of /such streams/ divided\non newlines. Similarly, suppose you have the idea the unfolding of\nsome sort of stream from a Haskell value, a seed - a file name,\nas it might be.  And suppose you /also/ have some idea of a stream of\nsuch Haskell values - maybe a stream of file names coming from\nsomething like @du@, subjected\nto some filter. Then you will also have the idea of a streaming\n/succession/ of /such unfoldings/ linked together end to end in\naccordance with the initial succession of seed values.\n\nCall those 5 sentences the ABCs. If you understood the ABCs\nyou have a total comprehension of @Stream f m r@.\n\n* @Stream@ itself expresses what the word \"succession\" meant in the ABCs\n\n* The general parameter @f@ expresses what was meant by \"such streams\"\n\n* @m@ expresses the relevant form of \"effect\".\n\nGeneral combinators for working with this idea of succession irrespective\nof the form of succession are\ncontained in the module @Stream@. They can be used, or example,\nto organize a succession of io-streams @Generator@s or pipes\n@Producer@s or the effectful\nbytestreams of the <https://hackage.haskell.org/package/streaming-bytestring\nstreaming-bytestring> library,\nor whatever stream-form you can express in a Haskell functor.\n\n* __A freely generated stream of /connected individual Haskell values/ is Producer, Generator or Source__\n\nBut, of course, as soon as you grasp the general form of /succession/,\nyou are already in possession of the most basic concrete form: a simple\n/succession of individual Haskell values/ one after another.\nThis is just @Stream ((,) a) m r@, or as we write it here,\n@Stream (Of a) m r@, strictifying the left element of the pair.\nThe pairing just links the present element with the rest of the\nstream. The primitive @yield@ statement just expresses the\npairing of the yielded item with the rest of the stream; or rather\nit is itself the trivial singleton stream.\n@Streaming.Prelude@ is focused on the manipulation of this\nall-important stream-form, which appears in the streaming\nIO libraries under titles like:\n\n> io-streams: Generator a r\n> pipes:      Producer a m r\n> conduit:    ConduitM () o m r\n> streaming:  Stream (Of a) m r\n\nThe only difference is that in @streaming@ the simple Generator or Producer\nconcept is formulated explicitly in terms of the\n/general/ concept of successive connection. But this is\na concept you need and already possess anyway, as your comprehension of\nthe four sentences above showed.\n\nThe special case of a\n/stream of individual Haskell values/\nthat simply /comes to an end without a special result/ is variously\nexpressed thus:\n\n> io-streams: InputStream a\n> pipes:      Producer a m ()\n> conduit:    Source m a\n> machines:   SourceT m a (= forall k. MachineT m k a)\n> streaming:  Stream (Of a) m ()\n\n* __@Streaming.Prelude@__\n\n@Streaming.Prelude@ closely follows @Pipes.Prelude@.\nBut since it restricts itself to use\nonly of the general idea of streaming, it cleverly /omits the pipes/:\n\n> ghci> S.stdoutLn \$ S.take 2 S.stdinLn\n> let's<Enter>\n> let's\n> stream<Enter>\n> stream\n\nHere's a little /connect and resume/, as the streaming-io experts call it:\n\n> ghci> rest <- S.print \$ S.splitAt 3 \$ S.each [1..10]\n> 1\n> 2\n> 3\n> ghci> S.sum rest\n> 49\n\nSomehow, we didn't even need a four-character operator for that, nor advice\nabout best practices! - just ordinary Haskell common sense.\n\n* __Mother's @Prelude@ vs. @Streaming.Prelude@__\n\nThe effort of\n@Streaming.Prelude@ is to leverage the intuition the user has acquired\nin mastering @Prelude@ and @Data.List@ and to elevate her understanding\ninto a general comprehension of effectful streaming transformations.\nUnsurprisingly, it takes longer to type out\nthe signatures. It cannot be emphasized enough, thought, that\n/the transpositions are totally mechanical/:\n\n> Data.List.Split.chunksOf :: Int -> [a]          -> [[a]]\n> Streaming.chunksOf       :: Int -> Stream f m r -> Stream (Stream f m) m r\n\n> Prelude.splitAt   :: Int -> [a]          -> ([a],[a])\n> Streaming.splitAt :: Int -> Stream f m r -> Stream f m (Stream f m r)\n\nThese concepts are \"functor general\", in the jargon used in the documentation,\nand are thus exported by the main @Streaming@ module.\nSomething like @break@ requires us to inspect individual values for\ntheir properties, so it is found in the @Streaming.Prelude@\n\n> Prelude.break           :: (a -> Bool) -> [a]               -> ([a],[a])\n> Streaming.Prelude.break :: (a -> Bool) -> Stream (Of a) m r -> Stream (Of a) m (Stream (Of a) m r)\n\nIt is easy to prove that /resistance to these types is resistance to effectful streaming itself/.\nI will labor this point a bit more below, but you can also find it developed, with\ngreater skill, in the documentation for the pipes libraries.\n\n* __How come there's not one of those fancy \"ListT done right\" implementations in here?__\n\nThe use of the final return value appears to be a complication, but in fact\nit is essentially contained in the idea of effectful streaming. This is why\nthis library does not export a /ListT done right/, which would be simple enough -\nfollowing @pipes@, as usual:\n\n> newtype ListT m a = ListT (Stream (Of a) m ())\n\nThe associated monad instance would wrap\n\n> yield :: (Monad m)            => a -> Stream (Of a) m ()\n> for   :: (Monad m, Functor f) => Stream (Of a) m r -> (a -> Stream f m ()) -> Stream f m r\n\nTo see the trouble, consider\n<http://hackage.haskell.org/package/list-t-0.4.5.1/docs/ListT.html#v:splitAt this signature>\nfor splitting a ListT very much done right. Here's what becomes of\n<http://hackage.haskell.org/package/list-t-0.4.5.1/docs/src/ListT.html#slice chunksOf>.\nAs long as we are trapped in ListT, however much rightly implements, these operation can't be made to stream;\nsomething like a list must be accumulated. Similarly, try to imagine\nadding a @splitAt@ or @lines@ function to\n<https://hackage.haskell.org/package/list-t-text-0.2.0.2/docs/ListT-Text.html this API>.\nIt would accumulate strict text forever, just as\n<https://hackage.haskell.org/package/io-streams-1.3.2.0/docs/System-IO-Streams-ByteString.html#v:lines this does>\nand <https://hackage.haskell.org/package/pipes-bytestring-2.1.1/docs/src/Pipes-ByteString.html#lines this doesn't> and\n<https://hackage.haskell.org/package/streaming-bytestring-0.1.0.6/docs/Data-ByteString-Streaming-Char8.html#v:lines this doesn't>\nThe difference is simply that the latter libraries operate with the general concept of streaming, and\nthe whole implementation is governed by it.\nThe attractions of the various \"@ListT@ done right\" implementations are superficial; the concept\nbelongs to logic programming, not stream programming.\n\nNote similarly that you can write a certain kind of\n<http://hackage.haskell.org/package/machines-0.5.1/docs/Data-Machine-Process.html#v:taking take>\nand\n<http://hackage.haskell.org/package/machines-0.5.1/docs/Data-Machine-Process.html#v:dropping drop>\nwith the\n@machines@ library - as you can even with a \"@ListT@ done right\". But I\nwish you luck writing @splitAt@! Similarly you can write a\n<http://hackage.haskell.org/package/machines-io-0.2.0.6/docs/System-IO-Machine.html getContents>;\nbut I wish you luck dividing the resulting bytestream on its lines.\nThis is - as usual! - because the library was not written with the general concept of\neffectful succession or streaming in view. Materials for\nsinking some elements of a stream in one way, and others in other ways - copying\neach line to a different file, as it might be, but without accumulation\n- are documented within. So are are myriad other elementary operations of streaming io.\n\n* __Didn't I hear that free monads are a real efficiency dog? Isn't Oleg working on this important problem?__\n\nWe noted above that if we instantiate @Stream f m r@ to @Stream ((,) a) m r@\nor the like, we get the standard idea of a producer or generator.\nIf it is instantiated to @Stream f Identity m r@ then we have\nthe standard /free monad construction/. This construction is subject to\ncertain familiar\nobjections from an efficiency perspective; efforts have been made to\nsubstitute exotic cps-ed implementations and so forth.\nIt is an interesting topic.\n\nBut in fact, the standard alarmist talk about /retraversing binds/ and /quadratic explosions/ and\n/costly appends/, and so on become __transparent__ nonsense with @Stream f m r@\nin its streaming use. The conceptual power needed to see this is\nbasically nil: Where @m@ is read as\n@IO@, or some transformed @IO@, then the dreaded /retraversing of the binds/\nin a stream expression would involve repeating all the past actions. Don't worry, to get e.g. the\nsecond chunk of bytes from a handle, you won't need to start over and get the first\none again! The first chunk has vanished into an unrepeatable past.\n\nAll of the difficulties a streaming library is attempting to avoid\nare concentrated in the deep irrationality of\n\n> sequence :: (Monad m, Traversable t) => t (m a) -> m (t a)\n\nIn the streaming context, this becomes\n\n> sequence :: Monad m, Functor f => Stream f m r -> Stream f m r\n> sequence = id\n\nIt is of course easy enough to define\n\n> accumulate :: Monad m, Functor f => Stream f m r -> m (Stream f Identity r)\n\nor @reifyBindsRetraversingWherePossible@ or @_ICan'tTakeThisStreamingAnymore@,\nas you might call it. /The types themselves/\nteach the user how to avoid or control the sort of accumulation\ncharacteristic of @sequence@ in its various guises e.g. @mapM f = sequence . map f@ and\n@traverse f = sequence . fmap f@ and  @replicateM n = sequence . replicate n@.\nSee for example the types of\n\n> Control.Monad.replicateM :: Int -> m a -> m [a]\n> Streaming.Prelude.replicateM :: Int -> m a -> Stream (Of a) m ()\n\nIf you want to tempt fate and replicate the irrationality of @Control.Monad.replicateM@,\nthen sure, you can define the hermaphroditic chimera\n\n> accumulate . Streaming.Prelude.replicateM :: Int -> m a -> m (Stream (Of a) Identity ())\n\nwhich is what we find in our diseased base libraries.\nBut once you know how to operate with a stream directly you will see less and less point\nin what is called /extracting the (structured) value from IO/. The\ndistinction between\n\n> \"getContents\" :: String\n\nand\n\n> getContents :: IO String\n\nbut, omitting consideration of eof, we might define @getContents@ thus\n\n> getContents = sequence \$ repeat getChar\n\nThere it is again! The very devil! By contrast there is no distinction\nbetween\n\n> \"getContents\" :: Stream (Of Char) m ()\n\nand\n\n> getContents :: MonadIO m => Stream (Of Char) m ()\n\nThey unify just fine. That is, if I make the type synonym\n\n> type String m r = Stream (Of Char) m r\n\nI get, for example:\n\n> \"getLine\"                              :: String m  ()\n> getLine                                :: String IO ()\n> \"getLine\" >> getLine                   :: String IO ()\n> splitAt 20 \$ \"getLine\" >> getLine      :: String IO (String IO ())\n> length \$ \"getLine\" >> getLine          :: IO Int\n\nand can dispense with half the advice they will give you on @#haskell@.\nIt is only a slight exaggeration to say that a stream should never be \"extracted from IO\".\n\nWith @sequence@ and @traverse@,\nwe accumulate a pure succession of pure values from a pure\nsuccession of monadic values.\nWhy bother if you have intrinsically monadic conception of\nsuccession or traversal? @Stream f m r@\ngives you an immense body of such structures and a\nsimple discipline for working with them. Spinkle @id@ freely\nthough your program if you get homesick.\n\nMuch of the discussion of the free monad concept is associated\nwith the \"algebraic effects\" program. A leading advertisement for this approach\nis that we can toss generators into the soup without missing a beat.\nSee for example this\n<http://hackage.haskell.org/package/extensible-effects-1.11.0.0/docs/Control-Eff-Coroutine.html#v:yield yield>.\nconcept\n\n> yield :: (Typeable a, Member (Yield a) r)                 => a   -> Eff r ()\n\nWith it I can over course write, e.g.\n\n> each  :: (Traversable t, Typeable a, Member (Yield a) r)  => t a -> Eff r ()\n> each = mapM_ yield\n\nOnce I have one of these \"coroutine effects\" on my hands,\nthe fact that I am writing Haskell, not e.g. Python, will leave me with\nlittle trouble splitting it at the 20th element, and reserving the rest for later use.\nI invite you, though, to divide such a \"coroutine effect\" on its lines or\ninto chunks of 500. There must be /some/ sense in which these effects are \"extensible\".\nBut it seems not as far as the ABCs.\n\n* __Interoperation with the streaming-io libraries__\n\nThe simplest form of interoperation with\n<http://hackage.haskell.org/package/pipes pipes>\nis accomplished with this isomorphism:\n\n> Pipes.unfoldr Streaming.next        :: Stream (Of a) m r   -> Producer a m r\n> Streaming.unfoldr Pipes.next        :: Producer a m r      -> Stream (Of a) m r\n\nOf course, @streaming@ can be mixed with @pipes@ wherever @pipes@\nitself employs @Control.Monad.Trans.Free@; speedups are frequently\nappreciable. (This was the original purpose of the main @Streaming@ module,\nwhich just mechanically transposes a simple optimization employed in @Pipes.Internal@.)\nInteroperation with\n<http://hackage.haskell.org/package/io-streams io-streams>\nis thus:\n\n> Streaming.reread IOStreams.read     :: InputStream a       -> Stream (Of a) IO ()\n> IOStreams.unfoldM Streaming.uncons  :: Stream (Of a) IO () -> IO (InputStream a)\n\nA simple exit to <http://hackage.haskell.org/package/conduit conduit> would be, e.g.:\n\n> Conduit.unfoldM Streaming.uncons    :: Stream (Of a) m ()  -> Source m a\n\nThese conversions should never be more expensive than a single @>->@ or @=\$=@.\n\nAt a much more general level, we also of course have interoperation with\n<http://hackage.haskell.org/package/free free>:\n\n> Free.iterTM  Stream.wrap              :: FreeT f m a -> Stream f m a\n> Stream.iterTM Free.wrap               :: Stream f m a -> FreeT f m a\n\n* __Examples__\n\nFor some simple ghci examples, see the commentary throughout the Prelude module.\nFor slightly more advanced usage see the commentary in the haddocks of <https://hackage.haskell.org/package/streaming-bytestring streaming-bytestring>\nand e.g.\n<https://gist.github.com/michaelt/6c6843e6dd8030e95d58 these replicas> of shell-like programs from\nthe io-streams tutorial.\nHere's a simple <https://gist.github.com/michaelt/2dcea1ba32562c091357 streaming GET request> with\nintrinsically streaming byte streams.\n\n* __Problems__\n\nQuestions about this library can be put as issues through the github site or\non the <https://groups.google.com/forum/#!forum/haskell-pipes pipes mailing list>.\n(This library understands itself as part of the pipes \"ecosystem.\")";
        buildType = "Simple";
      };
      components = {
        "streaming" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.mmorph
            hsPkgs.transformers
            hsPkgs.bytestring
          ];
        };
      };
    }