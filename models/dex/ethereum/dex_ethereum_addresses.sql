{{config(
    schema = 'dex_ethereum',
    alias = 'addresses',
    tags=['static']
    )
}}

SELECT blockchain, address, dex_name, distinct_name
FROM (VALUES
      ('ethereum', 0xe66b31678d6c16e9ebf358268a790b763c133750, '0x', 'Coinbase Wallet Proxy'),
      ('ethereum', 0xdef1c0ded9bec7f1a1670819833240f027b25eff, '0x', 'Exchange Proxy'),
      ('ethereum', 0x22f9dcf4647084d6c31b2765f6910cd85c178c18, '0x', 'Exchange Proxy Flash Wallet'),
      ('ethereum', 0xd47140f6ab73f6d6b6675fb1610bb5e9b5d96fe5, '1inch', 'Old Router V2'),
      ('ethereum', 0x1111111254fb6c44bac0bed2854e76f90643097d, '1inch', 'V4: Aggregation Router'),
      ('ethereum', 0x11111112542d85b3ef69ae05771c2dccff4faa26, '1inch', 'V3: Aggregation Router'),
      ('ethereum', 0x220bda5c8994804ac96ebe4df184d25e5c2196d4, '1inch', 'Aggregation Executor'),
      ('ethereum', 0xf2f400c138f9fb900576263af0bc7fcde2b1b8a8, '1inch', 'Aggregation Executor 1'),
      ('ethereum', 0x288931fa76d7b0482f0fd0bca9a50bf0d22b9fef, '1inch', 'Aggregation Executor 2'),
      ('ethereum', 0xdb38ae75c5f44276803345f7f02e95a0aeef5944, '1inch', 'Deployer 4'),
      ('ethereum', 0x11111254369792b2ca5d084ab5eea397ca8fa48b, '1inch', 'Exchange 2'),
      ('ethereum', 0xfade503916c1d1253646c36c9961aa47bf14bd2d, '1inch', 'OneSplitWrap Proxy'),
      ('ethereum', 0x9021c84f3900b610ab8625d26d739e3b7bff86ab, '1inch', 'OneSplit'),
      ('ethereum', 0xe069cb01d06ba617bcdf789bf2ff0d5e5ca20c71, '1inch', 'Router 2'),
      ('ethereum', 0x8df6084e3b84a65ab9dd2325b5422e5debd8944a, 'Coinbase', 'Wallet Swap Proxy'),
      ('ethereum', 0x63f0797015489d407fc2ac7e3891467e1ed0166c, 'Convex', 'CvxFxsZaps'),
      ('ethereum', 0x9008d19f58aabd9ed0d60971565aa8510560ab41, 'Cow', 'GPv2Settlement'),
      ('ethereum', 0xa2b47e3d5c44877cca798226b7b8118f9bfb7a56, 'Curve', 'Compound Swap'),
      ('ethereum', 0x52ea46506b9cc5ef470c5bf89f17dc28bb35d85c, 'Curve', 'USDT Swap'),
      ('ethereum', 0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51, 'Curve', 'y Swap'),
      ('ethereum', 0xf7ca8f55c54cbb6d0965bc6d65c43adc500bc591, 'cVault Finance', 'Deployer'),
      ('ethereum', 0xa356867fdcea8e71aeaf87805808803806231fdc, 'DODO', 'V2 Proxy'),
      ('ethereum', 0x31e085afd48a1d6e51cc193153d625e8f0514c7f, 'KyberSwap', 'Reserve Uniswap'),
      ('ethereum', 0xdf1a1b60f2d438842916c0adc43748768353ec25, 'KyberSwap', 'Aggregation Router 2'),
      ('ethereum', 0x00555513acf282b42882420e5e5ba87b44d8fa6e, 'Kyber Swap', 'Aggregation Router 3'),
      ('ethereum', 0x54a4a1167b004b004520c605e3f01906f683413d, 'KyberSwap', 'KyberUniswapReserve'),
      ('ethereum', 0x881d40237659c251811cec9c364ef91dc08d300c, 'Metamask', 'Swap Router'),
      ('ethereum', 0xf92c1ad75005e6436b4ee84e88cb23ed8a290988, 'Paraswap', 'Old Contract 3'),
      ('ethereum', 0x1bd435f3c054b6e901b7b108a0ab7617c808677b, 'Paraswap', 'P4'),
      ('ethereum', 0x9509665d015bfe3c77aa5ad6ca20c8afa1d98989, 'Paraswap', 'V2'),
      ('ethereum', 0xf90e98f3d8dce44632e5020abf2e122e0f99dfab, 'Paraswap', 'V3'),
      ('ethereum', 0xdef171fe48cf0115b1d80b88dc8eab59176fee57, 'Paraswap', 'V5: Augustus Swapper Mainnet'),
      ('ethereum', 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, 'Uniswap', 'Router02'),
      ('ethereum', 0xe592427a0aece92de3edee1f18e0157c05861564, 'Uniswap', 'V3 Router'),
      ('ethereum', 0x68b3465833fb72a70ecdf485e0e4c7bd8665fc45, 'Uniswap', 'V3 Router 2'),
      ('ethereum', 0x619b188b3f02605e289771e0001f9c313b8436a0, 'Uniswap', 'V2 Aggregator'),
      ('ethereum', 0x81c46feca27b31f3adc2b91ee4be9717d1cd3dd7, 'Vyper', 'Vyper contract'),
      ('ethereum', 0x31efc4aeaa7c39e54a33fdc3c46ee2bd70ae0a09, 'xPollinate', 'Transaction Manager'),
      ('ethereum', 0x775ee938186fddc13bd7c89d24820e1b0758f91d, 'Zapper.fi', 'Old Uniswap V2 Zap In 2'),
      ('ethereum', 0xf164fc0ec4e93095b804a4795bbe1e041497b92a, 'Uniswap', 'Router01'),
      ('ethereum', 0xef1c6e67703c7bd7107eed8303fbe6ec2554bf6b, 'Uniswap', 'Universal Router'),
      ('ethereum', 0x3fc91a3afd70395cd496c647d5a6cc9d4b2b7fad, 'Uniswap', 'Universal Router'),
      ('ethereum', 0x6000da47483062a0d734ba3dc7576ce6a0b645c4, 'Uniswap', 'UniswapX'),
      ('ethereum', 0x83c8f28c26bf6aaca652df1dbbe0e1b56f8baba2, 'GemSwap', 'GemSwap'),
      ('ethereum', 0xd9e1ce17f2641f24ae83637ab66a2cca9c378b9f, 'SushiSwap', 'Router02'),
      ('ethereum', 0x03f7724180aa6b939894b5ca4314783b0b36b329, 'ShibaSwap', 'UniswapV2Router02'),
      ('ethereum', 0x76f4eed9fe41262669d0250b2a97db79712ad855, 'Odos', 'Odos'),
      ('ethereum', 0xbebc44782c7db0a1a60cb6fe97d0b483032ff1c7, 'Curvefi', 'threepool_swap'),
      ('ethereum', 0xdc24316b9ae028f1497c275eb9192a3ea0f67022, 'Curvefi', 'steth_swap'),
      ('ethereum', 0xc30141b657f4216252dc59af2e7cdb9d8792e1b0, 'Socket', ''),
      ('ethereum', 0xa2398842f37465f89540430bdc00219fa9e4d28a, 'DODO', 'DODORouteProxy'),
      ('ethereum', 0x00000000009726632680fb29d3f7a9734e3010e2, 'Rainbow', 'RainbowRouter'),
      ('ethereum', 0x03f34be1bf910116595db1b11e9d1b2ca5d59659, 'Tokenlon', 'Tokenlon'),
      ('ethereum', 0x617dee16b86534a5d792a4d7a62fb491b544111e, 'Kyber', 'MetaAggregationRouter'),
      ('ethereum', 0xb9960d9bca016e9748be75dd52f02188b9d0829f, 'Swapr', 'Swapr'),
      ('ethereum', 0x9d0950c595786aba7c26dfddf270d66a8b18b4fa, 'Dfx Finance', 'Router'),
      ('ethereum', 0x3b3ae790df4f312e745d270119c6052904fb6790, 'OKX DEX', 'OKX DEX'),
      ('ethereum', 0x6352a56caadc4f1e25cd6c75970fa768a3304e64, 'OpenOcean', 'OpenOceanExchangeProxy'),
      ('ethereum', 0x6131b5fae19ea4f9d964eac0408e4408b66337b5, 'Kyber', 'MetaAggregationRouterV2'),
      ('ethereum', 0x92e929d8b2c8430bcaf4cd87654789578bb2b786, 'Swftswap', 'SwftSwap'),
      ('ethereum', 0x7782046601e7b9b05ca55a3899780ce6ee6b8b2b, 'AnySwap', 'AnyswapV6Router'),
      ('ethereum', 0x99a58482bd75cbab83b27ec03ca68ff489b5788f, 'Curvefi', 'swap_router'),
      ('ethereum', 0x0c17e776cd218252adfca8d4e761d3fe757e9778, 'Saita', 'SaitaSwapRouter'),
      ('ethereum', 0x13f4ea83d0bd40e75c8222255bc855a974568dd4, 'PancakeSwap', 'SmartRouter'),
      ('ethereum', 0xe4c577bdec9ce0f6c54f2f82aed5b1913b71ae2f, '1inch', 'exchangeV1'),
      ('ethereum', 0x0000000006adbd7c01bc0738cdbfc3932600ad63, '1inch', 'exchangeV2'),
      ('ethereum', 0x0000000053d411becdb4a82d8603edc6d8b8b3bc, '1inch', 'exchangeV3'),
      ('ethereum', 0x000005edbbc1f258302add96b5e20d3442e5dd89, '1inch', 'exchangeV4'),
      ('ethereum', 0x0000000f8ef4be2b7aed6724e893c1b674b9682d, '1inch', 'exchangeV5'),
      ('ethereum', 0x111112549cfedf7822eb11fbd8fd485d8a10f93f, '1inch', 'exchangeV6'),
      ('ethereum', 0x111111254b08ceeee8ad6ca827de9952d2a46781, '1inch', 'exchangeV7'),
      ('ethereum', 0x111111125434b319222cdbf8c261674adb56f3ae, '1inch', 'AggregationRouterV2'),
      ('ethereum', 0x1111111254eeb25477b68fb85ed929f73a960582, '1inch', 'AggregationRouterV5')
    ) AS x (blockchain, address, dex_name, distinct_name)