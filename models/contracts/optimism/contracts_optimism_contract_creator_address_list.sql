{{ 
  config(
    alias='contract_creator_address_list',
    unique_key='creator_address',
    post_hook='{{ expose_spells(\'["optimism"]\',
                              "sector",
                              "contracts",
                              \'["msilb7", "chuxinh"]\') }}'
    )  
}}
select 
  lower(creator_address) as creator_address
  ,contract_project
from 
    (values
    ('0x932607335869cff6349ef450e74c83a3b871a9ff', 'Lyra V1')
    ,('0x41a742d0cb523b0c313518309ade763fb609da25', 'Lyra V1')
    ,('0x924ac9910c09a0215b06458653b30471a152022f', 'Hop Protocol')
    ,('0xfefec7d3eb14a004029d278393e6ab8b46fb4fca', 'Hop Protocol')
    ,('0x0e0e3d2c5c292161999474247956ef542cabf8dd', 'Hop Protocol')
    ,('0x3c0ffaca566fccfd9cc95139fef6cba143795963', 'Hop Protocol')
    ,('0xec4b41af04cf917b54aeb6df58c0f8d78895b5ef', 'Hop Protocol')
    ,('0x7ed52863829ab99354f3a0503a622e82acd5f7d3', 'Rari')
    ,('0x44045fd5d3840fec51b76fb6a87cbcda735a8629', 'Slingshot')
    ,('0x3204ac6f848e05557c6c7876e09059882e07962f', 'Rubicon')
    ,('0xee4f7b6c39e7e87af01fb9e4cee0c893ff4d63f2', 'OneInch')
    ,('0x11799622f4d98a24514011e8527b969f7488ef47', 'OneInch')
    ,('0x74886e43273e66da073d26d91cdb4f0eb91fc420', 'OneInch')
    ,('0x7a3d05c70581bd345fe117c06e45f9669205384f', 'Rainbow')
    ,('0x075da589886ba445d7c7e81c472059de7ae65250', 'Maker')
    ,('0x395ec94bf3e3dcd3afbd82cd03197731411e396b', 'Synthetix')
    ,('0x3c05b1239b223c969540fefc0270227a2b00e047', 'Synthetix')
    ,('0x6c9fc64a53c1b71fb3f9af64d1ae3a4931a5f4e9', 'Uniswap V3')
    ,('0xdead1cb30b3ca13cd67d1d6f4e2790d12484fdd8', 'Chainlink')
    ,('0x03863f6ad36f1fcd908517e3c56c6b3fd3f50752', 'Chainlink')
    ,('0x1e4e0e7dd2a854ea15f4ee852abb78a99c86357c', 'Uniswap V3')
    ,('0xced01e7617bf6052a71154daa6d50d8b243f1b26', 'Uniswap V3')
    ,('0xd640037fa41436326e4a0e3fd0511aad83d2345c', 'Xchain')
    ,('0x1b9dfc56e38b0f92448659c114e2347bd803911c', 'Celer')
    ,('0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d', 'Across')
    ,('0x155b15a7e9ff0e34ceaf2439589d5c661adc9493', 'Connext')
    ,('0xc715aa67866a2fef297b12cb26e953481aed2df4', 'dHedge')
    ,('0xf8c3875bfa461a38532fedf90453985901c55114', 'Dope Wars')
    ,('0x42d4cb9514710d8b90e790aa80ac3cc635b66589', 'Optimistic Bunnies')
    ,('0xda32bd8e86575f827f0d36272f703d5370c06152', 'OptiPunks')
    ,('0x0af91fa049a7e1894f480bfe5bba20142c6c29a9', 'Synapse')
    ,('0x22cdc93f53ee3f6b8ad66fad6f98915a5349950e', 'Synapse')
    ,('0xa67b7147dce20d6f25fd9abfbcb1c3ca74e11f0b', 'Synapse')
    ,('0xa9e90579eb086bcda910dd94041ffe041fb4ac89', 'Synapse')
    ,('0xa430a8a6911e8de02acfe835eb1d5539a58cee94', 'Flux Protocol')
    ,('0x0e860f44d73f9fdbaf5e9b19afc554bf3c8e8a57', 'Poly Network')
    ,('0xe1cb04a0fa36ddd16a06ea828007e35e1a3cbc37', 'Gnosis Safe')
    ,('0x914d7fec6aac8cd542e72bca78b30650d45643d7', 'Gnosis Safe')
    ,('0xab0d90fde397a4362acbe1d3a1c17f24b5b53266', 'Gnosis Safe')
    ,('0x3e579180cf01f0e2abf6ff4d566b7891fbf9b868', 'BitBTC Protocol')
    ,('0xd15d5d0f5b1b56a4daef75cfe108cb825e97d015', 'Superfluid')
    ,('0xbabe61887f1de2713c6f97e567623453d3c79f67', 'CurveFi')
    ,('0x7eeac6cddbd1d0b8af061742d41877d7f707289a', 'CurveFi')
    ,('0x763b9dba40c3d03507df454823fe03517f84a5ab', 'WePiggy')
    ,('0x85671317830357f40188aa6a55e96a3338eb4d7d', 'Volmex')
    ,('0xee9801669c6138e84bd50deb500827b776777d28', 'O3 Swap')
    ,('0xe37da1e4632b94e601ac015be8db554e0456b01a', 'EtherOrcs')
    ,('0x849a19c0746fb0d335e02dec0d0b3e057e585176', 'Perpetual Protocol')
    ,('0x6c3f14da26556585706c02af737a44e67dc6954d', 'Go Pocket')
    ,('0x27b2458658f036838c2050b2b35e874e57fe4789', 'Diamondfoot NFT')
    ,('0x98ab60422568db7d58623c69cb41d29c9dea1ce6', 'NiftyKit')
    ,('0x644b37ea8027b81ef1bdcd10ac0a78ea8532b7c8', 'Nuke Vaults')
    ,('0xb56238d0225c7e6155591916167c138a4be2babc', 'tdao')
    ,('0xf3315a3e482a96b8c327674b7a16151dcd899a9a', 'FeestArb')
    ,('0x4b49652fbf286b3da10e44442c38134d841159ef', 'universexyz')
    ,('0xe5cd62ac8d2ca2a62a04958f07dd239c1ffe1a9e', 'Unlock Protocol')
    ,('0x47c8f1db1df960b2ff00b240038576098277e8da', 'Kwenta')
    ,('0xf2cafb99992ce6a49f948b452c783614808612d1', 'WePiggy')
    ,('0x6275d233a12b7cc747e41543878c31b604d0bae1', 'Test xidian')
    ,('0xbc0895f9d50ddcad909f7089fc642e59006a9460', 'thirdweb')
    ,('0x80898b704baa55e7e37f1128fc6ae5836661f54a', 'Pika Protocol')
    ,('0x69bdb276a17dd90f9d3a545944ccb20e593ae8e3', 'Set Protocol')
    ,('0x3af9fe35d280ada5a5edb1bef3ed872a3231d73c', 'POA')
    ,('0x39e5351e6ce3c4b19b8b0a2f5c82c511782457be', 'Aktionariat')
    ,('0xa8e8affc55e6ab42ba4a3e19cb5a3c7adcf0407b', 'Pods')
    ,('0x304c736acd582fc72db1ddff12fc368a685a5897', 'KratosDAO')
    ,('0x6fdbcdb16027b86ab0fa5846e53b1b0952b4580c', 'Rentable')
    ,('0xc0fcf8403e10b65f1d18f1b81b093004b1127275', '88mph')
    ,('0x082443883d739faea9bfd590ab550f7184f050c9', 'Composable Finance')
    ,('0x420220b72bbd307db8615e7aa0eadca399cf2fc0', 'handlefi')
    ,('0x2cc3befb75e5b9c04eb90f8167c5c8c8523c30eb', 'RaptureLabs')
    ,('0x0022ec3dd352bf214a9d936081f10ffac66455e1', 'Terrae')
    ,('0x558ef269bcc4cc9f2e14e3f4301231fbeb85d95f', 'BarnBridge')
    ,('0x6861d375afa2c9e5f7d82c176fb50ea70356740a', 'HungryBunz')
    ,('0xafd618064739a2820f5f80c2585563a8af0e6871', 'SupDucks')
    ,('0xab0b18523e8fe8cbf947c55632e8ab5ce936ae8c', 'Gridzoneio')
    ,('0x9f60699ce23f1ab86ec3e095b477ff79d4f409ad', 'InstaDapp')
    ,('0x7754c0584372d29510c019136220f91e25a8f706', 'FNDZ')
    ,('0x88888887c3ebd4a33e34a15db4254c74c75e5d4a', 'Stability')
    ,('0x99910e7d8895248320744b6f9a49f8afb1ad8b31', 'iOS DeFi Wallet')
    ,('0x9d59cf867ec98b67ab05b7f482eb38baf3884058', 'CST')
    ,('0x057fcd7bd66e0b0e7cbf387d12b2a49a20d30922', 'EPNS')
    ,('0xfaed87bc8a4721442d501bb190bd767a0d34c84b', 'Optimistic Loogies')
    ,('0x992dac69827a200ba112a0303fe8f79f03c37d9d', 'ETHDubai')
    ,('0x7126c3c6d04e4a2a89e2b1589a96d37724be9e39', 'Tally')
    ,('0x697ef32b4a3f5a4c39de1cb7563f24ca7bfc5947', 'Insula')
    ,('0x54054ea2db6edc336cb87966815fd66cc337f224', 'Keep3r Network')
    ,('0x3dff16210a6c9ffb7ee50c6eb21bb6675b86adf4', 'YIN Finance')
    ,('0xc7f73196a301948866f457add5eadb961fe05fb3', 'YIN Finance')
    ,('0xe4379a25a0db888e19ec2c14416fe68a62aca5cc', 'WPSmartContractscom')
    ,('0x4816506e22004f8ce02963f5cd9703afb1c394d4', 'FIDIS FI25 Crypto Index')
    ,('0x5b0f8d8f47e3fdf7ee1c337abca19dbba98524e6', 'Gardens')
    ,('0xdbaabc182e5fcebf216c353a3ebe32cdb7390094', 'Kromatikafinance')
    ,('0x74888d40a3523397500afebac92152f4617997b3', 'realityeth')
    ,('0x2c6d58c52accf2a04138c76ee11c1b5a100ef6a5', 'OptiMarket')
    ,('0xef31d75a2f85cfdd9032158a2ceb773c84d79192', 'dHedge')
    ,('0x9841484a4a6c0b61c4eea71376d76453fd05ec9c', 'Thales')
    ,('0x8314125c8b68af2afd0d151eb4a551e88128a2ae', 'Thales')
    ,('0xde6d6f23aabbdc9469c8907ece7c379f98e4cb75', 'dForce')
    ,('0x1b5caa1d3a1582a438e4cd93ee7a7e0e4d5624fb', 'Uniswap V3')
    ,('0xc73567e09e1774f6e9e5f1f9de7fd0c3c4ce94fa', 'NFT for my bro')
    ,('0xa71405f7d11734f03f2616b93eaed22604c978bf', 'Mean Finance')
    ,('0x0f5b021bb7300a83b7ff74fe39b56908fc0929c3', 'The Cyber Inu')
    ,('0xfdd9c344a52ace735564f1dc1ec19bd507dd5037', 'TRDEFI')
    ,('0xfe64a36b1465dfac28e93add6d8c5ecca816a7d0', 'HomepageDAO')
    ,('0x80094b8ef0b5762661e6ba3daf9d8acb5b0620e6', 'Imbue')
    ,('0x962193e0101ab216f362435a276b22e2172fc847', 'Gladiaxy')
    ,('0x876db660de545a14aa14bb6069e5b369cc233241', '18Decimal')
    ,('0x4862eb1658b72555934b91bf9aee142849e736b9', 'Yeti')
    ,('0xa28f0249ec1d48a0022792ec8e708020cb27c815', 'Crypto Sigma Males NFT')
    ,('0x000f05552f24850e75793d38c2bd0cbd249a9ff4', 'RigoBlock')
    ,('0x287bd66753f0ca8e9c2171d782df39e4c28cfd65', 'Poly Network')
    ,('0x037a9d5dd0fd9bc48d699f1010b9ec68bb839e34', 'CyberFrens')
    ,('0x74e5189d4258eaf1236d4fd1454225c0a4b54907', 'PelicanSwap')
    ,('0xd4fb8e266a490103b0515e22c99d6643a288a455', 'DefiYield')
    ,('0xc602aaf1b61fdf7834c4138cd96400738d298807', 'AllianceBridge')
    ,('0x7a68685e4d5d67322a26db639c62ac1460823905', 'zeroex')
    ,('0xdef1c0ded9bec7f1a1670819833240f027b25eff', 'zeroex')
    ,('0xe750ad66de350f8110e305fb78ec6a9f594445e3', 'zeroex')
    ,('0xf8ebddd333b3ab285906fd5eb603b17ecd18266f', 'zeroex')
    ,('0x60908c4037cbb8f3aa040d9fb668ab36280eb871', 'zeroex')
    ,('0x8602ee2f8aaeb671e409b26d48e36dd8cc3b7ed7', 'ZipSwap')
    ,('0xf7c1daf7443d7307df13c81f5f0328d4c7803e7b', 'BoringDAO')
    ,('0x38e63793993ae54be374d129f34a3faf2c382e97', 'TokenFunder')
    ,('0xbb6e024b9cffacb947a71991e386681b1cd1477d', 'NULL')
    ,('0x512472840327530ea03cce6f58966b221f3a8b6a', 'Perpetual Protocol')
    ,('0x56cf1fa9185e42e90205e955e299f33b6204da59', 'DoraHacks')
    ,('0x6336cf6f9a7abb9efa86c04ac29541f015dd58b1', 'XmasBook')
    ,('0xb5bb09ecaecb7fca6c837ab706ce321b3a3dd949', 'VaultDefi')
    ,('0x6a932f0ae2a7a49fb24b70c8eef6ec0808163345', 'PhotoDAO')
    ,('0x5b9319b2cd3d702ba12398c8e7515979276c038d', 'PhotoDAO')
    ,('0x9986ee0c3eea15dcf8642b56179652f9589b95db', 'OpenOcean')
    ,('0x992ebe8be326ea0cd7d30a98740d9899612330bb', 'Band Protocol')
    ,('0x6a885bd0086368b56dbf2005bb72bbcc5fd7e2b9', 'Band Protocol')
    ,('0x21ffcbdbdd2c0f59d779cf8f1fd0a87b5f84bc44', 'OctoFinance')
    ,('0x8c1fd2de219c98f5f88620422e36a8a32f83324e', 'opengsn')
    ,('0x892e04f20f9d7118917d7f94850c3c9423120c32', 'Teahouse')
    ,('0x9972d940c9a23f84fcf92867d18f28d75d010e5e', 'Mask Network')
    ,('0x74f85fe5538dbfcf3b46399e121c3ba83f695f91', 'TokenPocket')
    ,('0xcf85a70d88d14d157c50aa61999f7808027a15d6', 'Animal Coloring Books')
    ,('0x2596b971ee0de4532566c59fa394c0d29f21d224', 'OE Ape')
    ,('0xec1557a67d4980c948cd473075293204f4d280fd', 'Quix')
    ,('0x7856f2a12a7a18b4a115d295f548434a9b078fa1', 'Aelin')
    ,('0xdbeabb16b017d321cbaa00c7412ce76d08ec2fc1', 'BitBTC Protocol')
    ,('0xc22834581ebc8527d974f8a1c97e1bea4ef910bc', 'Gnosis Safe')
    ,('0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34', 'Socket')
    ,('0xfd8c6ebe0d284f9d2c9665f17bba47032259e907', 'Connext')
    ,('0x83bc3055649f9a829bebeccbc86e090d6a157161', 'Chainlink')
    ,('0x2ae8831a00b3ebd603c0028b317cf30e578a4a3c', 'Perpetual Protocol')
    ,('0x0c16527ec6d017541568f1998fda2b3c24b81977', 'CatDAO')
    ,('0xf9ce0b68f4baa50bd30128a01c5297e2b46a6428', 'CircusDAO')
    ,('0xd9cbe784df2ae03ea0e22335bb5cd7fcb42a0e32', 'Gelato')
    ,('0x88215a2794ddc031439c72922ec8983bde831c78', 'Arrakis Finance')
    ,('0x11978d32619cfefc2e7c75a70ef8beb077b503ca', 'Frax Finance')
    ,('0x68d03de837cc395ec34c61c078fa901468a3bb29', 'Frax Finance')
    ,('0x4707ddf20584a1df862403e7e0cc77c33330dca0', 'Bongswap')
    ,('0x0aa8aa45b1eb8ccdd2c742e7db796b0a589b86b5', 'Perpetual Protocol')
    ,('0x97b62cd23a04be0e0dc4a5f03ddbd0addc8ba29a', 'Band Protocol')
    ,('0xf6839085f692bde6a8062573e3da35e7e947c21e', 'InstaDapp')
    ,('0x26ed8119c45e3871df446a13f7fdc9e2c527dacd', 'InstaDapp')
    ,('0x5bdb37d0ddea3a90f233c7b7f6b9394b6b2eef34', 'Saddle Finance')
    ,('0xde910777c787903f78c89e7a0bf7f4c435cbb1fe', 'Synthetix')
    ,('0xb9bac083c6a968fe5d63e9e2337312f1a40c710a', 'Circular Art')
    ,('0x332b9e15db0c413de6f88b278b0016de3af005a0', 'Pegasus Finance')
    ,('0xfeebd6b860d4f33ec03014af0ee0a35ce8d6fd97', 'Pegasus Finance')
    ,('0xe48a5173ade669651120cb5e99e6fe140d4d73da', 'Mean Finance')
    ,('0xe69d24dd645d3d6a9985665dc0d5f8d57597e915', 'BitBTC Protocol')
    ,('0x35a9f94af726f07b5162df7e828cc9dc8439e7d0', 'BtcMirror')
    ,('0x294cb241ebf6fe95bbb76071c7cda8dd62eb138e', 'Cryptex')
    ,('0xa2e00fbd1e9315f490ae356f69c1f6624e2ed992', 'Nuke Vaults')
    ,('0x5befa2d163e40e148df83921e1cc59e044df5471', 'XDao')
    ,('0x03238279fa90dca3a02a65113f290cea01d48d87', 'Mirror')
    ,('0x6eb3783165e3e9bf6f3b463524738a2147be08ff', 'Clipper')
    ,('0x7a4535c67f2617d2590617666295c46c9f044f0d', 'Set Protocol')
    ,('0x71d024c31a1324496b9f69533618cefd09770010', 'Pilgrim Protocol')
    ,('0x89dea587db263d8c82bc63c2ae2b6f4784c418d9', 'OptiMarket')
    ,('0x057c75c9b1072be82ddd90b64501f525a9a300e7', 'Chainlink')
    ,('0xfa9da51631268a30ec3ddd1ccbf46c65fad99251', 'Multichain')
    ,('0x3976d5b90cfa0a0cc4d62983455ff6a6909f0f18', 'Dentacoin')
    ,('0x5ce7d83f7aaac17a0ad40540b37fc7a0b688ff44', 'Olympus')
    ,('0x5777aa6f437399af6cef2fce0be8d4b4ed7c7232', 'Umbra')
    ,('0xb16a11442878d6f1ef202ae63233a7c13e98fd7f', 'Hundred Finance')
    ,('0x7a1285a7381a3099bfe6706549859316e6f90e6a', 'Aave')
    ,('0xc841a5fb20d2395316ff9d7cfa2032ab51e70f00', 'BitBTC Protocol')
    ,('0xfadcbe6735146c6839e2748a371450a4540e12f3', 'Dentacoin')
    ,('0xf663a1d22ec5cec99c4bb404ec3e948895afcd73', 'Chainlink')
    ,('0x8286dc6df929c4bfa4f6951cab4dae2ec02d4d72', 'Hundred Finance')
    ,('0xc36142c497053c42bdaa14737bf80e71daa984c5', 'InstaDapp')
    ,('0xf125ccc0a0332ba7b51a601d0975ac44cc3b5655', 'InstaDapp')
    ,('0x161b29d1919d4e06b53ee449376181b5082b30b9', 'Zerion')
    ,('0xfd0bd19e849493f77d8f77ed026520c1368102bd', 'Layer2DAO')
    ,('0xbc577bddeb479eeabadf5303a1221cf84c074ea7', 'xToken')
    ,('0xaa2e0c5c85acb7717e58060ab3c96d2b184ee07c', 'Arrakis Finance')
    ,('0xd82fbd545f8205f67006309773b2e065c6764ee5', 'Superfluid')
    ,('0x9f403140bc0574d7d36ea472b82daa1bbd4ef327', 'Layer Zero')
    ,('0x1dd2560c3c818ed81208f2e6bc042c241dc9b22e', 'ChainShot')
    ,('0x4365f8e70cf38c6ca67de41448508f2da8825500', 'Aave')
    ,('0xae0b890a625a87c23a1fccdefb4c26a798719f17', 'Aave')
    ,('0x1d7c6783328c145393e84fb47a7f7c548f5ee28d', 'Stargate Finance')
    ,('0x0298f4332e3857631385b39766325058a93e249f', 'Sabiler')
    ,('0xb29050965a5ac70ab487aa47546cdcbc97dae45d', 'Punk Domains')
    ,('0x83a15cb9781458b421ad11def469586242cd06cb', 'Superfluid')
    ,('0x8b1727d9322e7bb82e87018f0a4f0d60a3d0866d', 'Superfluid')
    ,('0xcc59c42d05bd66fe22fba27016f783af43f68fa7', 'Aktionariat')
    ,('0x322d58b9e75a6918f7e7849aee0ff09369977e08', 'DeFi Saver')
    ,('0x3527a204a5260a0e36ca695312379370328e4e6c', 'Mirror')
    ,('0x820f92c1b3ad8e962e6c6d9d7caf2a550aec46fb', 'Tipcc')
    ,('0xaa270c9cf88e3806bfa1e3cd983f34af339a7ffc', 'Synapse')
    ,('0xb00b19938346b745ccb3fc4fad946de0caa724a2', 'Router Protocol')
    ,('0xb00bc9e04698a3315b6038225a2e9e42d63c7669', 'Router Protocol')
    ,('0x9f76043b23125024ce5f0fb4ae707482107dd2a8', 'Polynomial Protocol')
    ,('0x6ece61d29b90642941c41240da924690da145696', 'Stargate Finance')
    ,('0x57ade2f6723dea166d17694a576403ba9750762d', 'Mirror')
    ,('0xacfe4511ce883c14c4ea40563f176c3c09b4c47c', 'Pickle Finance')
    ,('0xc9424ba7e09a46f50f8aa89203c61149091adbcd', 'LayerZero')
    ,('0x473ab11a7b649064ee50b255b5b14dfe284a0373', 'Chainlink')
    ,('0x954e3eb8de035ec1bc8fe8fa0091d5b87ab17d47', 'LiFi')
    ,('0x079a889eb69013d451ecf45377258948116e2b3e', 'tofuNFT')
    ,('0xe00eaa2787a8830a485153b7bf508bc781e4a220', 'QiDao')
    ,('0xb49a6213da096f72c6f83c63a68f43caabb113ad', 'KEVoLUTION')
    ,('0x14719476c596fce28d381bd3ac12c3ce4698a1e9', 'Raid Project')
    ,('0xeb10511109053787b3ed6cc02d5cb67a265806cc', 'Party Panda')
    ,('0x919124f5f5135d3020a0b075412679755545f7c5', 'Curvefi')
    ,('0x244a807084a3eb9fd5fe88aa0b13aec8401577bd', 'dLab')
    ,('0xbe9228ce3b7ed30c8646143d0e56ee16fec6c07c', 'WardenSwap')
    ,('0xbb73463b88b0cb9681f176d6d43a12c2fea2c237', 'DeFiHelper')
    ,('0x386a28709a31532d4f68b06fd28a27e4ea378364', 'DODO')
    ,('0x817b4eab0e595801f382f531e36245ebcd401452', 'Pegasus Finance')
    ,('0xb7eb3f6a9abcae7559484fb126b8f872781cf9dd', 'Nested')
    ,('0x4fbe899d37fb7514adf2f41b0630e018ec275a0c', 'Beethoven X')
    ,('0x3d64fb8a2fFd08C186e8060aA57c8011D8b999cC', 'Beethoven X')
    ,('0x697A71353A4BC1eb1356763018a229c27a3fbA0C', 'Beethoven X')
    ,('0xADE38bd2E8D5A52E60047AfFe6E595bB5E61923A', 'Gamma')
    ,('0x9c5a87452d4FAC0cbd53BDCA580b20A45526B3AB', 'Niftyswap')
    ,('0x669dcFd6C2c0B267DDa08E9478E3e2c9Def8b7f2', 'Putty')
    ,('0xf87BC5535602077d340806D71f805EA9907a843D', 'Sushi')
    ,('0xE8bc44AE4bA6EDDB88C8c087fD9b479Dff729850', 'Hashflow')
    ,('0x2AfAeCA15Ac8A62E9bfa3EAF0285315AbAEcf334', 'Elk Finance')
    ,('0x111617795C52555D45cF100D0cBF01c82E157E81', 'Elk Finance')
    ,('0xF220eA963D27Ebe782f09403017B29692A4fC4aE', 'Elk Finance')
    ,('0x8b5F94a2c2e23eE8cC0Ff56872aF973243eF7628', 'ChainHop')
    ,('0x00778C4222c7d837cbfe4C1539AD10c127eC1C1F', 'Celer')
    ,('0xbac4edFAB0FFBD3344B163fAd587F07261c6CD7E', 'Backed')
    ,('0x4a27c059FD7E383854Ea7DE6Be9c390a795f6eE3', 'Backed')
    ,('0x5b0390bccCa1F040d8993eB6e4ce8DeD93721765', 'Tarot Finance')
    ,('0xCDf41a135C65d0013393B3793F92b4FAF31032d0', 'Gelato')
    ,('0xbA3C7B0b8f29b41F0E841c1ffB1Bda8B605830dA', 'DefiSaver')
    ,('0x0000000000933edea24f198114758e45BF9B9f14', 'Mean Finance')
    ,('0x98D93988b17caDdeC301aC40E805c565F2D5925B', 'Optimistic Loogies')
    ,('0xc0DE1436C4E247F8652476A0B9ff55699801e1d0', 'Velodrome')
    ,('0xab1ef74D2C461e95f4b658ca1f94aC519ad80BA2', 'OP')
    ,('0x9983D8cDEAf7872501628229d311E2F7Df396aDd', 'EvoDefi')
    ,('0x05ec0f0112CA25846886B04f2587bEfafC2A8d68', 'EvoDefi')
    ,('0x7EfDC11929225F1756479006149b0bd7A2b89C1E', 'Apetimism')
    ,('0xe027880CEB8114F2e367211dF977899d00e66138', 'Granary')
    ,('0x4826B5F57600e63f4C22CED5f1FfCff442F00D3a', 'DeCommas')
    ,('0x0132613b3A1061816F4661Ad301612910E3Cce0B', 'XY Finance')
    ,('0x72f0a08d8f8102cafBB3974566b9861a1ba74d34', 'Elk Finance')
    ,('0x35D504BC2A8D04bf3b90e285eB5c41F53F6353cc', 'Dragonia')
    ,('0x010dA5FF62B6e45f89FA7B2d8CEd5a8b5754eC1b', 'Beefy Finance')
    ,('0xdd99b75f095d0c4d5112aCe938e4e6ed962fb024', 'ThirdWeb')
    ,('0x4B6B6A3Af8C882B53C2cC99f016C89B231cE441d', 'Matrix')
    ,('0xdC0D4BdCc70362cEDd23d3997C31528Ec1502FC4', 'Biconomy - Hyphen')
    ,('0x0c36A5b01E1668C867A5e58f23bb6cb4d83a4cc8', 'Rainbow')
    ,('0x3A893A7525C4263052c3C04f9C32d919c75cb8e0', 'Symphony Finance')
    ,('0x939c8d89ebc11fa45e576215e2353673ad0ba18a', 'OpenSea')
    ,('0x7c9c773e41a3b68924b3b4924df8fffcf7ae7e18', 'Naga DAO')
    ,('0x24bD918b03dB3f16557942A15c92b6859510c4dc', 'Diamond Protocol')
    ,('0x9143743c4a54fdCF81f38e2370A4e9819E98797c', 'Diamond Protocol')
    ,('0xF6c5B9c0B57590A5be6f16380D68eAC6fd9d0Fac', 'Ooki')
    ,('0x90899D3Cc800C0a9196AeC83DA43e46582cB7435', 'Ren')
    ,('0x3Fc25fB2fbd5b1Ae1c9528Fe5Be8c7EF91fCD95b', 'Holozaki')
    ,('0x4856e043a1F2CAA8aCEfd076328b4981Aca91000', 'Quix')
    ,('0xd7f73cbf2b6ac915976cc96706b76d6425fbc234', 'PoolTogether')
    ,('0x4D40eb12430A57965cEe3015348d490C6156dF20', 'PoolTogether')
    ,('0xAE75B29ADe678372D77A8B41225654138a7E6ff1', 'Brahma')
    ,('0xB9F8e55Ac4353e0eDD65F11B4A4384a718E78189', 'Clipper')
    ,('0x1E71AEE6081f62053123140aacC7a06021D77348', 'Reaper Farm')
    ,('0x982F264ce97365864181df65dF4931C593A515ad', 'Beefy Finance')
    ,('0xdd32a567bc09384057a1f260086618d88b28e64f', 'Ganland')
    ,('0x13c716188c38ce27b9b2b672a59543cf1170eabe', 'Alchemix')
    ,('0x2d356b114cbCA8DEFf2d8783EAc2a5A5324fE1dF', 'Thales')
    ,('0xa7ECcdb9Be08178f896c26b7BbD8C3D4E844d9Ba', 'Abacus')
    ,('0xf01121e808F782d7F34E857c27dA31AD1f151b39', 'Paraswap')
    ,('0xE89CB2053A04Daf86ABaa1f4bC6D50744e57d39E', 'Backed')
    ,('0x79f5dc19bc96ec1db776d39535bde169e67e33f4', 'InsureDAO')
    ,('0x3b410908e71Ee04e7dE2a87f8F9003AFe6c1c7cE', 'Reaper Farm')
    ,('0x7AFAc84bF3931B11548ED02b4460ad754cF54C66', 'KyberSwap')
    ,('0x056c7933D2f25904787bb92C26E9f90655529f8E', 'Adrastia Oracle')
    ,('0x26Ce2091749059a66703CD4B998156d94eC393ef', 'Fraxswap')
    ,('0xc5584892F5B81C58D0547891641a91c245C26209', 'Firebird Finance')
    ,('0xD927cE147f098cE634301e6c4281541b1939a132', 'Beefy Finance')
    ,('0x6539519E69343535a2aF6583D9BAE3AD74c6A293', 'Reaper Farm')
    ,('0x000061c160273811279508582A4AfaBc263D98d2', 'Galxe')
    ,('0x985A29E88E75394DbDaE41a269409f701ccf6a43', 'QiDao')
    ,('0x7E8A8b130272430008eCa062419ACD8B423d339D', 'Rango Exchange')
    ,('0xC7f8D87734aB2cbf70030aC8aa82abfe3e8126cb', 'Premia')
    ,('0xDa2d96eADAb3671D9DFC6b2901aA85E99F8f0EB3', 'Ripae')
    ,('0x952e9c6391d9C0f6C6174D395Aa9B4eC1030335A', 'Tarot Finance')
    ,('0x6A6B51FcB0217521601237227FA2E43a95eC06b0', 'KyberSwap')
    ,('0x1BA608D6a354fbEb41FD7cC799e7f09b2612AB26', 'Iron Bank')
    ,('0x725Bd51dCCD08272C63eFdC1a5112002da0C5540', 'Velodrome')
    ,('0x1826316Aec2F2D400086B3cAdfCb291238010efA', 'Homora V2')
    ,('0xf8Bf80beB4cEe030d8C60e5942CA3749aE6beDF1', 'BlueSweep')
    ,('0x94B90d0362D32AA14314D666A8968e1247508dfC', 'Hidden Hand')
    ,('0xa3102370655EfE1b29De7898A85bF7Fef3f1fB8a', 'OptimismPad')
    ,('0x1a86596A4F3398B6c44232ba1716e20e88205A40', 'OptimismPrime')
    ,('0x685723b9dc89bdf28ba5f98f9a8c0ac899bd6e77', 'Jarvis Network')
    ,('0x1e7b390149Abb3B891e0a7027E111188032D4540', 'RadioShack Swap')
    ,('0x4C3490dF15edFa178333445ce568EC6D99b5d71c', 'Reaper Farm')
    ,('0xf0974c239b7d08b7240b690b69ec3dd8ae783efc', 'Apetimism Launchapd')
    ,('0x5cb01385d3097b6a189d1ac8ba3364d900666445', 'Overnight')
    ,('0xA52fECFe3F0D4a77A572dec9B72277abC5dFD9c6', 'NEX')
    ,('0xb98d4d4e205aff4d4755e9df19bd0b8bd4e0f148', 'Fuji Finance')
    ,('0xFb59Ce8986943163F14C590755b29dB2998F2322', 'Sonne Finance')
    ,('0x5bd973c3841b754386963abb117ffc796041aecf', 'OpenXProject')
    ,('0xB32D9aa786E4f53f9484539cF44B1E092F94D483', 'Quest3')
    ,('0x7a6468F8161ef39d7639c67DfA5637BA1b7ba74B', 'Alchemix')
) as temp_table (creator_address, contract_project)
