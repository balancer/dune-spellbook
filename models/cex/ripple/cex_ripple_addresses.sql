{{config(
        tags = ['static'],
        schema = 'cex_ripple',
        alias = 'addresses',
        post_hook='{{ expose_spells(\'["ripple"]\',
                                    "sector",
                                    "cex",
                                    \'["hildobby"]\') }}')}}

SELECT blockchain, address, cex_name, distinct_name, added_by, added_date
FROM (VALUES
    ('ripple', 'rpDAj4qpXr8t3jF16uGxXcKci', 'Backpack', 'Backpack 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'rGNiiYvEozEVgZ58xaU3RKwX8eACQBCt3', 'Backpack', 'Backpack 2', 'hildobby', date '2024-04-20')
	, ('ripple', 'rndrizKT3MK1iimdxRdWabcF7Zg7AR5T4nu', 'Backpack', 'Backpack 3', 'hildobby', date '2024-04-20')
	, ('ripple', 'rYJFskUPiHa7hkeR8VUtAeFoSYbKedZNsDv', 'Backpack', 'Backpack 4', 'hildobby', date '2024-04-20')
	, ('ripple', 'rt5u2ar58sp47hm5f9wvz2cvg', 'Binance', 'Binance 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'rfwzlu9c5208lhtn7ywt0mjrhjh4nt4fjyq', 'Binance', 'Binance 2', 'hildobby', date '2024-04-20')
	, ('ripple', 'rwhu9rzgrx7exrfc3pcd5z290ga8qfm0j', 'Binance', 'Binance 3', 'hildobby', date '2024-04-20')
	, ('ripple', 'rq8MZiKmYmwobbYdZQ5nnCbX1qvQfE', 'Binance', 'Binance 4', 'hildobby', date '2024-04-20')
	, ('ripple', 'rThtU9xm4o8gR3a9pvQuxXnRNuNF', 'Binance', 'Binance 5', 'hildobby', date '2024-04-20')
	, ('ripple', 'rsjtyLsHoG8WQMe2RFw3de4pLTQZNcY', 'Binance', 'Binance 6', 'hildobby', date '2024-04-20')
	, ('ripple', 'rhp9zpww22phqjwwmelta0c8a5q990ghs6', 'Binance', 'Binance 7', 'hildobby', date '2024-04-20')
	, ('ripple', 'rtudMAdwz2U7vSGumVDuxZsZNibJuzw', 'Binance', 'Binance 8', 'hildobby', date '2024-04-20')
	, ('ripple', 'rWUHRENvtBwjemi6kFzk4K9SMr', 'Binance', 'Binance 9', 'hildobby', date '2024-04-20')
	, ('ripple', 'rXbKf5rdaQCUzeh4MvZxd3Zx5T', 'Binance', 'Binance 10', 'hildobby', date '2024-04-20')
	, ('ripple', 'rgYzgh6AtNmTUFThqRxhbyoNWhG6iD', 'Binance', 'Binance 11', 'hildobby', date '2024-04-20')
	, ('ripple', 'rVBGeDR9sE1LJXkwG6AQSNAMW', 'Binance', 'Binance 12', 'hildobby', date '2024-04-20')
	, ('ripple', 'rotjhCzcbBEXzK3W73DiyzVLYc', 'Binance', 'Binance 13', 'hildobby', date '2024-04-20')
	, ('ripple', 'rEYTc7RzN3E19sDLrAhRt7DrTTmd', 'Binance', 'Binance 14', 'hildobby', date '2024-04-20')
	, ('ripple', 'rAWAR9tRcqygA5pihmnURozxzo', 'Binance', 'Binance 15', 'hildobby', date '2024-04-20')
	, ('ripple', 'rjpvJXQU2zSpUDsnk9b4PAQW5Pwtg4K', 'Binance', 'Binance 16', 'hildobby', date '2024-04-20')
	, ('ripple', 'rE9t4TDXCgdSet8W6mxYqGijC3', 'Binance', 'Binance 17', 'hildobby', date '2024-04-20')
	, ('ripple', 'rRPtcQvVpjvigxWU17JoinePy', 'Binance', 'Binance 18', 'hildobby', date '2024-04-20')
	, ('ripple', 'rvsm9gxDe7fJSzbNZSJcxZvf8dqmWGHG8S', 'Binance', 'Binance 19', 'hildobby', date '2024-04-20')
	, ('ripple', 'r3EdrePaQoG3Ghxs2wM98xSLRu8Xh56U', 'Binance', 'Binance 20', 'hildobby', date '2024-04-20')
	, ('ripple', 'rBWaQ8T2Vtjry3Nj3oUgwYcqq9vrHDM12G6', 'Binance', 'Binance 21', 'hildobby', date '2024-04-20')
	, ('ripple', 'rZ9wn84f5x1hZhL4DHvk738ns5jwb', 'Binance', 'Binance 22', 'hildobby', date '2024-04-20')
	, ('ripple', 'rDCUY212N6M4pzmYABtgkgo7XZn', 'Binance', 'Binance 23', 'hildobby', date '2024-04-20')
	, ('ripple', 'rY8tryqsYVCYS3MFbtffiPp2ccyn4STm', 'Binance', 'Binance 24', 'hildobby', date '2024-04-20')
	, ('ripple', 'r5UV6HEcXatwdFQfmLVUqQQQMUxHLS', 'Binance', 'Binance 25', 'hildobby', date '2024-04-20')
	, ('ripple', 'rBtttd61FExHC68vsZ8dqmS3DfjFEceA1A', 'Binance', 'Binance 26', 'hildobby', date '2024-04-20')
	, ('ripple', 'rDAE53VfMvftPB4ogpWGWvzkQxfht6JPxr', 'Binance', 'Binance 27', 'hildobby', date '2024-04-20')
	, ('ripple', 'rDecw8UhrZZUiaWc91e571b3TL41MUioh7', 'Binance', 'Binance 28', 'hildobby', date '2024-04-20')
	, ('ripple', 'rEy8TFcrAPvhpKrwyrscNYyqBGUkE9hKaJ', 'Binance', 'Binance 29', 'hildobby', date '2024-04-20')
	, ('ripple', 'rNU4eAowPuixS5ZCWaRL72UUeKgxcKExpK', 'Binance', 'Binance 30', 'hildobby', date '2024-04-20')
	, ('ripple', 'rP3mUZyCDzZkTSd1VHoBbFt8HGm8fyq8qV', 'Binance', 'Binance 31', 'hildobby', date '2024-04-20')
	, ('ripple', 'rPJ5GFpyDLv7gqeB1uZVUBwDwi41kaXN5A', 'Binance', 'Binance 32', 'hildobby', date '2024-04-20')
	, ('ripple', 'rPz2qA93PeRCyHyFCqyNggnyycJR1N4iNf', 'Binance', 'Binance 33', 'hildobby', date '2024-04-20')
	, ('ripple', 'rpmxpWis42eYV4oMhyxJNSzrLRdacJVooa', 'Binance', 'Binance 34', 'hildobby', date '2024-04-20')
	, ('ripple', 'rs8ZPbYqgecRcDzQpJYAMhSxSi5htsjnza', 'Binance', 'Binance 35', 'hildobby', date '2024-04-20')
	, ('ripple', 'rm2a7u9xyeffvulm6e589qvesmt0v0rjxqf', 'BitVenus', 'BitVenus 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'r6QSydW9bFQG1mXiPNNu6WpJGmUa9i1g', 'Bitfinex', 'Bitfinex 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'rhstFM5XQYA28G2ekCkvpb6bPdhUT5vcsZt', 'Bitfinex', 'Bitfinex 2', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1qxrlkh6yh0km5m5n7923syel0yqqvc3pj', 'Bitfinex', 'Bitfinex 3', 'hildobby', date '2024-04-20')
	, ('ripple', 'rnqrzrz3gwpxd70prfqwehanuxzkwmv55ff', 'Bitfinex', 'Bitfinex 4', 'hildobby', date '2024-04-20')
	, ('ripple', 'r7tjx5vymykd2galr9chaqlwjwm9', 'Bitfinex', 'Bitfinex 5', 'hildobby', date '2024-04-20')
	, ('ripple', 'rqgd257dlw5nku3jgqjgpl59sm5ns', 'Bitfinex', 'Bitfinex 6', 'hildobby', date '2024-04-20')
	, ('ripple', 'rd1a56dkgcpwwx6grmcvw9w5vpf9zeq53w3', 'Bitfinex', 'Bitfinex 7', 'hildobby', date '2024-04-20')
	, ('ripple', 'rzLDLhLWFpjSgCMCcxTU84bQ8AH5vhgjwq7', 'Bitfinex', 'Bitfinex 8', 'hildobby', date '2024-04-20')
	, ('ripple', 'riE7VuLwT3LwuvU9Nv4wAxP7XZ57d', 'Bitfinex', 'Bitfinex 9', 'hildobby', date '2024-04-20')
	, ('ripple', 'rre5qgx0mqg99xc0l2cuyu9ntt259ngsu7s', 'Bitfinex', 'Bitfinex 10', 'hildobby', date '2024-04-20')
	, ('ripple', 'rks06xjgq080hc95f77ttd7rkqvn', 'Bitfinex', 'Bitfinex 11', 'hildobby', date '2024-04-20')
	, ('ripple', 'r2pD1tszUNAkVX18K7nie1MptkZ1y', 'Bitget', 'Bitget 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'rRVZFoHty7scd2a1q6BDxPU5fyqiB4iR', 'Bitget', 'Bitget 2', 'hildobby', date '2024-04-20')
	, ('ripple', 'rctsWNwaFFN2PNTh3b1Kgxdtib', 'Bitget', 'Bitget 3', 'hildobby', date '2024-04-20')
	, ('ripple', 'rJYatcr2nhq7MYASSCWEKmN6L', 'Bitget', 'Bitget 4', 'hildobby', date '2024-04-20')
	, ('ripple', 'ruEVAFpvwj818TfZXq5y2DLyF', 'Bitget', 'Bitget 5', 'hildobby', date '2024-04-20')
	, ('ripple', 'r3AEihLNr81VYUf5PdfH5wLPqtJJyJs6yY', 'Bitget', 'Bitget 6', 'hildobby', date '2024-04-20')
	, ('ripple', 'rGDreBvnHrX1get7na3J4oowN19ny4GzFn', 'Bitget', 'Bitget 7', 'hildobby', date '2024-04-20')
	, ('ripple', 'rqtfN1hLLpvZ9pCtu66FEtM8BveoaKbbMoZ', 'Bitget', 'Bitget 8', 'hildobby', date '2024-04-20')
	, ('ripple', 'rmQMjEaCeCUXWAFNPJh9vFAYDdLTQc', 'Bitstamp', 'Bitstamp 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'rQEhMgDcsvsPhCJ5CBfrXeW9BECxg1', 'Bitstamp', 'Bitstamp 2', 'hildobby', date '2024-04-20')
	, ('ripple', 'rv76skpphadq3xr2lk9wrllqgxqygw', 'Bitstamp', 'Bitstamp 3', 'hildobby', date '2024-04-20')
	, ('ripple', 'r83rsk49gq858ktdchjaze4853dtksy38uu', 'Bitstamp', 'Bitstamp 4', 'hildobby', date '2024-04-20')
	, ('ripple', 'rm0g8h9gtm4egj4cymjtvyaapsz09usep66', 'Bitstamp', 'Bitstamp 5', 'hildobby', date '2024-04-20')
	, ('ripple', 'r7nn9t92hnk5untxg2ad4hvxaanpvwmrexy', 'Bitstamp', 'Bitstamp 6', 'hildobby', date '2024-04-20')
	, ('ripple', 'r7npkqhwld0af6urx7mv58ykx2vgq0z5sta', 'Bitstamp', 'Bitstamp 7', 'hildobby', date '2024-04-20')
	, ('ripple', 'r76lkezqe43kf63p5yc0hnx5sq42q6k', 'Bitstamp', 'Bitstamp 8', 'hildobby', date '2024-04-20')
	, ('ripple', 'r27aat6kat00yawhqley5wpl4fytc3f6cyf', 'Bitstamp', 'Bitstamp 9', 'hildobby', date '2024-04-20')
	, ('ripple', 'rutk9zxxn09vm0cs9g0mledte5kqxsm43w0', 'Bitstamp', 'Bitstamp 10', 'hildobby', date '2024-04-20')
	, ('ripple', 'rec8zlzs7nt4waljuhg2ueel6m0z5s3v7vg', 'Bitstamp', 'Bitstamp 11', 'hildobby', date '2024-04-20')
	, ('ripple', 'rqhqk3shkaxt6j8y39htyn0umglr233m6wq', 'Bitstamp', 'Bitstamp 12', 'hildobby', date '2024-04-20')
	, ('ripple', 'rehn0rzw5qeqwr0gtyw5p2sdkyspgu2me', 'Bitstamp', 'Bitstamp 13', 'hildobby', date '2024-04-20')
	, ('ripple', 'r0nuqka4lzgkj58ukk0crp8qflgjseumj55', 'Bitstamp', 'Bitstamp 14', 'hildobby', date '2024-04-20')
	, ('ripple', 'rl2cxsmm4aqgtkyxs25thvcc0p0wvujp8gk', 'Bitstamp', 'Bitstamp 15', 'hildobby', date '2024-04-20')
	, ('ripple', 'rhf9ggd3rw3xjn79f49w0dadxk4vg083adz', 'Bitstamp', 'Bitstamp 16', 'hildobby', date '2024-04-20')
	, ('ripple', 'rgs3laxzxrkpzvqgmca6njpmxsjjta3vlvl', 'Bitstamp', 'Bitstamp 17', 'hildobby', date '2024-04-20')
	, ('ripple', 'rqfu8dmy9jtv4k3k4yphpnegv06utvqek6u', 'Bitstamp', 'Bitstamp 18', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1oqv7J7osUu4eW88owPZScgFk', 'Bitstamp', 'Bitstamp 19', 'hildobby', date '2024-04-20')
	, ('ripple', 'rnmuxl95964vl20nee2fn27cq5r4fhg', 'Bitstamp', 'Bitstamp 20', 'hildobby', date '2024-04-20')
	, ('ripple', 'rhhnzcmkudg3tswtdcfrr0eussva9qxwzpd', 'Bitstamp', 'Bitstamp 21', 'hildobby', date '2024-04-20')
	, ('ripple', 'rY64F1C9rfrXJrrKR73bhGj3Um3Eq', 'Bitstamp', 'Bitstamp 22', 'hildobby', date '2024-04-20')
	, ('ripple', 'r6rAYnKrj5tHnTGNLUdJ7wFd7q', 'Bitstamp', 'Bitstamp 23', 'hildobby', date '2024-04-20')
	, ('ripple', 'rxtqv6ym455etlvx86c98qk7ujherxgcycp', 'Bitstamp', 'Bitstamp 24', 'hildobby', date '2024-04-20')
	, ('ripple', 'rf8t9g4jsmy8g9y48xhhuxvrs0eflt6', 'Bitstamp', 'Bitstamp 25', 'hildobby', date '2024-04-20')
	, ('ripple', 'rzeldvkp9n6yrq9ess9rxv7kcczdh9ta93l', 'Bitstamp', 'Bitstamp 26', 'hildobby', date '2024-04-20')
	, ('ripple', 'r6e0krj6dp3cf9agehge5nak77d70r4seuy', 'Bitstamp', 'Bitstamp 27', 'hildobby', date '2024-04-20')
	, ('ripple', 'rr4tjpzr0wtsem6fwwwrxztmdlv60ldja6a', 'Bitstamp', 'Bitstamp 28', 'hildobby', date '2024-04-20')
	, ('ripple', 'r8lxpayy0zh4gf4lzkjsd60kdv', 'Bitstamp', 'Bitstamp 29', 'hildobby', date '2024-04-20')
	, ('ripple', 'rnuDDzvYWTPqXTDVvwE9oLGLgxzV7Rpnpe', 'Bitstamp', 'Bitstamp 30', 'hildobby', date '2024-04-20')
	, ('ripple', 'rafKN5p8iQsRP13LZXXoV8SCw2b9ugvjy1', 'Bitstamp', 'Bitstamp 31', 'hildobby', date '2024-04-20')
	, ('ripple', 'rGNCoeUNqBzQnEiK2X7EYDzSpJ7PtKQSBb', 'Bitstamp', 'Bitstamp 32', 'hildobby', date '2024-04-20')
	, ('ripple', 'rEXmdJZRfjXN3XGVdz99dGSZpQyJqUeirE', 'Bitstamp', 'Bitstamp 33', 'hildobby', date '2024-04-20')
	, ('ripple', 'r3rVXDv8HDUBcrckfda9YsnBkX2E62WLyK', 'Bitstamp', 'Bitstamp 34', 'hildobby', date '2024-04-20')
	, ('ripple', 'rDsbeomae4FXwgQTJp9Rs64Qg9vDiTCdBv', 'Bitstamp', 'Bitstamp 35', 'hildobby', date '2024-04-20')
	, ('ripple', 'rp8Ygdyi2u7DZuMbchpFKBpsgSeg4LXDFQ', 'Bitstamp', 'Bitstamp 36', 'hildobby', date '2024-04-20')
	, ('ripple', 'r3KfqsuMjp85ddhNN2xNAAbmrNKUgFbcpk', 'Bitstamp', 'Bitstamp 37', 'hildobby', date '2024-04-20')
	, ('ripple', 'rG2bzZ2Q9JcpPeCyqXTQts6jHSYsX21G6a', 'Bitstamp', 'Bitstamp 38', 'hildobby', date '2024-04-20')
	, ('ripple', 'rnTdkgZXF9AsEV8crG8KtngiD4nDC8Dkc2', 'Bitstamp', 'Bitstamp 39', 'hildobby', date '2024-04-20')
	, ('ripple', 'rvYAfWj5gh67oV6fW32ZzP3Aw4Eubs59B', 'Bitstamp', 'Bitstamp 40', 'hildobby', date '2024-04-20')
	, ('ripple', 'rHHrmqpzuDSkpcRK2PFm7P5Mo5zf927ina', 'Bitstamp', 'Bitstamp 41', 'hildobby', date '2024-04-20')
	, ('ripple', 'rKB2i4mSgjSuq2xz617mQXmu33WG2WEYypm', 'Bitstamp', 'Bitstamp 42', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1q9w7x0secwr3uz397nl3zw4wc7w9su22r', 'Bitstamp', 'Bitstamp 43', 'hildobby', date '2024-04-20')
	, ('ripple', 'rc9zta8lzya2a3uutpc558l3uef2rgp24gd', 'Bitstamp', 'Bitstamp 44', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1q9frvl4a0wgmk4e28gu4asyqrd6ezd3wn', 'Bitstamp', 'Bitstamp 45', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1qysvm626pgxcwgy2w7fk2ulmw0mc6v3tw', 'Bitstamp', 'Bitstamp 46', 'hildobby', date '2024-04-20')
	, ('ripple', 'rns64hk5eqeh545zsdsusg5aunv4elkulh3', 'Bitstamp', 'Bitstamp 47', 'hildobby', date '2024-04-20')
	, ('ripple', 'rwDkr33gT6LuumniYjKEGjTLhsL5kmqC', 'Bybit', 'Bybit 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'rekwuupx2fl5udp9jql3sr03z3gsr2mf0f', 'Bybit', 'Bybit 2', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1tQ5kvoKMv85XsCESVavYo4oZZdWpY', 'Bybit', 'Bybit 3', 'hildobby', date '2024-04-20')
	, ('ripple', 'ruvZwLLkSfV9bNw12EJTPvNr7Pvaa', 'Bybit', 'Bybit 4', 'hildobby', date '2024-04-20')
	, ('ripple', 'rMvCasZ9cohYrSZRNYPTZfoaaSUQMfgQ8G', 'Bybit', 'Bybit 5', 'hildobby', date '2024-04-20')
	, ('ripple', 'rwBHqnCgNRnk3Kyoc6zon6Wt4Wujj3HNGe', 'Bybit', 'Bybit 6', 'hildobby', date '2024-04-20')
	, ('ripple', 'raQxZLtqurEXvH5sgijrif7yXMNwvFRkJN', 'Bybit', 'Bybit 7', 'hildobby', date '2024-04-20')
	, ('ripple', 'rAgAVNzMBP7aaktPvAmBSPEkehnFQejiZc5', 'Bybit', 'Bybit 8', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1v8mn6dmk7tf9u26kr09a05lmvc9j4k9d9', 'Bybit', 'Bybit 9', 'hildobby', date '2024-04-20')
	, ('ripple', 'rpEnHEZh6gQtJ7cf1MtK7Y8GYKoP4i', 'CoinDCX', 'CoinDCX 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'rdhfqry06nj902p9dxdftm4pxkhdqeum8y8', 'CoinDCX', 'CoinDCX 2', 'hildobby', date '2024-04-20')
	, ('ripple', 'r72a4fhxvm0360ehfdl27e00ja', 'CoinDCX', 'CoinDCX 3', 'hildobby', date '2024-04-20')
	, ('ripple', 'r7798v4qrcjjkzm8tl5t0xkwf', 'CoinDCX', 'CoinDCX 4', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1bNJ2TjZwfS757tPPtr84MwtEjL9qN', 'CoinDCX', 'CoinDCX 5', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1qy7f98r5ar2ayyst7lmm90tl630tsetyg', 'CoinDCX', 'CoinDCX 6', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1qy5dqjx4mtegqu6kx5gu6upkk96c8haf3', 'CoinDCX', 'CoinDCX 7', 'hildobby', date '2024-04-20')
	, ('ripple', 'r8g5dae2z9j36evkf2ek7zej3exgls6czmr', 'CoinDCX', 'CoinDCX 8', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1q90372c396d7w0cw3agseaj8vf4t8m9e3', 'CoinDCX', 'CoinDCX 9', 'hildobby', date '2024-04-20')
	, ('ripple', 'rayhrc7tnasnsev0uka3c0vpukazms5uw76', 'CoinDCX', 'CoinDCX 10', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1qyu9n5wtyufnp6vuhcak38tx4lw37znzk', 'CoinDCX', 'CoinDCX 11', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1q9h690lw5hpd37r4ngmlhf0y8wms394y4', 'CoinDCX', 'CoinDCX 12', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1qx47g9mejkukkspsp6jdjdzf2lmektye8', 'CoinDCX', 'CoinDCX 13', 'hildobby', date '2024-04-20')
	, ('ripple', 'r2awtjh5r9kgt5evrkk6j4fe2pe33etuvaz', 'CoinDCX', 'CoinDCX 14', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1q8m3qp920cljg5g079909xrvhngfln5u9', 'CoinDCX', 'CoinDCX 15', 'hildobby', date '2024-04-20')
	, ('ripple', 'rfsm9sj09fksz42yhj3gfcukrlfarty39da', 'CoinDCX', 'CoinDCX 16', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1qx824fl32wrgankldpnyt7txz0mel5d9c', 'CoinDCX', 'CoinDCX 17', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1q8xeul4sslt5xyeaa02vzgquwagv84t9x', 'CoinDCX', 'CoinDCX 18', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1q9m8eq44qcqe40yz0jwcuc3vs9t7zr6uk', 'CoinDCX', 'CoinDCX 19', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1qyzrghamkktczv3wujrdqt243emzu49zu', 'CoinDCX', 'CoinDCX 20', 'hildobby', date '2024-04-20')
	, ('ripple', 'rGcT3Dpz9Dk3oV7hsDT7Q1s6NRPo9a8iDt', 'CoinDCX', 'CoinDCX 21', 'hildobby', date '2024-04-20')
	, ('ripple', 'rMa4tVPUFTBC7Zzg1BkDwVWPLuE8bbQMX9', 'CoinDCX', 'CoinDCX 22', 'hildobby', date '2024-04-20')
	, ('ripple', 'rKa1G2q15ya4Xr3U3LVdEhBpR3H1CUNnQN', 'CoinDCX', 'CoinDCX 23', 'hildobby', date '2024-04-20')
	, ('ripple', 'rLUpiBeLhUyEzVtBkYE4S9t4zhdybSSARw', 'CoinDCX', 'CoinDCX 24', 'hildobby', date '2024-04-20')
	, ('ripple', 'rBjVFQDVC7WvAZNrpvapfq7MhSUMhj68wa', 'CoinDCX', 'CoinDCX 25', 'hildobby', date '2024-04-20')
	, ('ripple', 'rAM7NxUYDmSMbKKCQ6f742ZemLiypqjzY', 'CoinDCX', 'CoinDCX 26', 'hildobby', date '2024-04-20')
	, ('ripple', 'rXoJ5GYji5it8PJTneBFxzSJ6mYosQWxYKx', 'CoinDCX', 'CoinDCX 27', 'hildobby', date '2024-04-20')
	, ('ripple', 'razhqR5bmyyEfFRa3ycWu9KPgQgQ7G1R9zC', 'CoinDCX', 'CoinDCX 28', 'hildobby', date '2024-04-20')
	, ('ripple', 'rBouEC856Qmhrm8fptuEUnZrpNKgougsLi', 'CoinDCX', 'CoinDCX 29', 'hildobby', date '2024-04-20')
	, ('ripple', 'rs2MCVHmMrgpeHLgsbkwAarbNvzr2Y', 'CoinDCX', 'CoinDCX 30', 'hildobby', date '2024-04-20')
	, ('ripple', 'r2j6dFTGWHmLUhVBUj8XvDBgdGGzgfSwe5D', 'CoinDCX', 'CoinDCX 31', 'hildobby', date '2024-04-20')
	, ('ripple', 'r2sjm87x92wjrdrt8uhdy87r39la4c4chwv', 'CoinDCX', 'CoinDCX 32', 'hildobby', date '2024-04-20')
	, ('ripple', 'r3UFC5A8yvG7yt2GdvLUHEWtskS', 'CoinEx', 'CoinEx 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'rQCjUf54vf9G4qwFpJQ9RCyL2DprPqQ', 'CoinEx', 'CoinEx 2', 'hildobby', date '2024-04-20')
	, ('ripple', 'rpdwf7wnq3fuk7dfjqd59p3ke7ufqmlkfp4', 'Coinsquare', 'Coinsquare 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'retw2uvhjen7hvgaya3nsjgr430x9jhqf4a', 'Coinsquare', 'Coinsquare 2', 'hildobby', date '2024-04-20')
	, ('ripple', 'rq7ayfjpy7w8gmkhd3uwcy7nryr5apch', 'Coinsquare', 'Coinsquare 3', 'hildobby', date '2024-04-20')
	, ('ripple', 'r4q44ac28v3vrukaxjg4w30rh0cmm', 'Coinsquare', 'Coinsquare 4', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1vysfm34dhk3an94lz0s8p76rcze7ee506', 'Coinsquare', 'Coinsquare 5', 'hildobby', date '2024-04-20')
	, ('ripple', 'rBrgepoU9B4tZkXKsp9oHns252mkAFLrYj', 'Coinsquare', 'Coinsquare 6', 'hildobby', date '2024-04-20')
	, ('ripple', 'rsae9sMcxRe9WXHFM3WJJ3NdZESaoRY3KC', 'Coinsquare', 'Coinsquare 7', 'hildobby', date '2024-04-20')
	, ('ripple', 'rtdVFTeG3YcQZ3Cg7FPCwmyeYJm', 'Coinsquare', 'Coinsquare 8', 'hildobby', date '2024-04-20')
	, ('ripple', 'rP7RNP688yFTuMnMnhSrs5zLPia', 'Coinsquare', 'Coinsquare 9', 'hildobby', date '2024-04-20')
	, ('ripple', 'rozsF3z6C6mYRGKN6xRCHs7dm1htTYs', 'Coinsquare', 'Coinsquare 10', 'hildobby', date '2024-04-20')
	, ('ripple', 'rmw9tb9NDxyhjb6BvJnvAvDBC3CMurE', 'Coinsquare', 'Coinsquare 11', 'hildobby', date '2024-04-20')
	, ('ripple', 'rmkVuiNDEWCWRiyecpvNKi58FSbd', 'Coinsquare', 'Coinsquare 12', 'hildobby', date '2024-04-20')
	, ('ripple', 'r7hqls660wy8287vw0my32lmy', 'Crypto_com', 'Crypto_com 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'rqRNvh5pEW55hf3F9PEyb7rVq', 'Crypto_com', 'Crypto_com 2', 'hildobby', date '2024-04-20')
	, ('ripple', 'r4dl5wa7kl8yu792dceg9z5knl2gkn220lk', 'Crypto_com', 'Crypto_com 3', 'hildobby', date '2024-04-20')
	, ('ripple', 'rre85c78d942wx5tauw5n7uw92r7wr', 'Crypto_com', 'Crypto_com 4', 'hildobby', date '2024-04-20')
	, ('ripple', 'rxdd243yQ3tc7iJzqcEYtupB4v', 'Fastex', 'Fastex 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'rWrNEHbrSKBySj4qHGjemDtS3SF', 'Gate_io', 'Gate_io 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'r3oANXMafVrR8UC4pzV7FEAzo3r9', 'Gate_io', 'Gate_io 2', 'hildobby', date '2024-04-20')
	, ('ripple', 'roDXv8hmzKRtaSfBffRgedKpru8fgy6M', 'Gate_io', 'Gate_io 3', 'hildobby', date '2024-04-20')
	, ('ripple', 'rWTX5Yvy3gNG5Lm8BmhPx82Bt', 'Gate_io', 'Gate_io 4', 'hildobby', date '2024-04-20')
	, ('ripple', 'rhseMuShaXzLDGDBa8jGEjdEjNc83jouqdq', 'Gate_io', 'Gate_io 5', 'hildobby', date '2024-04-20')
	, ('ripple', 'rhtBatWqyFge4w6M6VLgNUwRHiXTAg3xfQC', 'Gate_io', 'Gate_io 6', 'hildobby', date '2024-04-20')
	, ('ripple', 'rPHVZJBsQprUEc5pRhgMWQaGciTssoZVwrS', 'Gate_io', 'Gate_io 7', 'hildobby', date '2024-04-20')
	, ('ripple', 'rHcFoo6a9qT5NHiVn1THQRhsEGcxtYCV4d', 'Gate_io', 'Gate_io 8', 'hildobby', date '2024-04-20')
	, ('ripple', 'rLzxZuZuAHM7k3FzfmhGkXVwScM4QSxoY7', 'Gate_io', 'Gate_io 9', 'hildobby', date '2024-04-20')
	, ('ripple', 'rNnWmrc1EtNRe5SEQEs9pFibcjhpvAiVKF', 'Gate_io', 'Gate_io 10', 'hildobby', date '2024-04-20')
	, ('ripple', 'rNu9U5sSouNoFunHp9e9trsLV6pvsSf54z', 'Gate_io', 'Gate_io 11', 'hildobby', date '2024-04-20')
	, ('ripple', 'rDQqKqVBqxfGDUyhC6rTRBN5s8Sbj', 'HTX', 'HTX 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'rsmpa2YAXRVXTtdCPBMnnR28fY', 'HTX', 'HTX 2', 'hildobby', date '2024-04-20')
	, ('ripple', 'rW2qFXoDZyi9fSHJNiJRvEcMBE', 'HTX', 'HTX 3', 'hildobby', date '2024-04-20')
	, ('ripple', 'rL6bFKWL94yWQi5hNMGNp1Nu27', 'HTX', 'HTX 4', 'hildobby', date '2024-04-20')
	, ('ripple', 'rq4EAUY1LHRhNkHPX8qmrv9WFs', 'HTX', 'HTX 5', 'hildobby', date '2024-04-20')
	, ('ripple', 'rKUDvXFJMFu65LqPTH3Yfpii4rbKT9bSQT', 'HTX', 'HTX 6', 'hildobby', date '2024-04-20')
	, ('ripple', 'raC4udvEeeni6aLPHbz9RKjHTQiWxKPfom', 'HTX', 'HTX 7', 'hildobby', date '2024-04-20')
	, ('ripple', 'ra4haepf6fehiCfVvB33j1D7vmv7JJD8M5', 'HTX', 'HTX 8', 'hildobby', date '2024-04-20')
	, ('ripple', 'rNPuS242i9ufMPEMusnjYPxyyu4STqSDGq', 'HTX', 'HTX 9', 'hildobby', date '2024-04-20')
	, ('ripple', 'rPzT7GA6vWU3PvYSXBpdP5fQPnzwVLwL24', 'HTX', 'HTX 10', 'hildobby', date '2024-04-20')
	, ('ripple', 'rJKBidE4Av6ZaFTBcAucZXCpU7QvNXyfpT', 'Hotbit', 'Hotbit 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'r5TAXRUSjKu2iNJuG6dNHxri3', 'Klever_Exchange', 'Klever_Exchange 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'rrufsw0z6vmkln5kesf0a9q0srnkr', 'Klever_Exchange', 'Klever_Exchange 2', 'hildobby', date '2024-04-20')
	, ('ripple', 'rBB7jxAemyUqSnN4YFLMC22cShZJZ', 'Korbit', 'Korbit 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'rfc8lm3ftdgu8ywvwanx8lqswj7w9u', 'Korbit', 'Korbit 2', 'hildobby', date '2024-04-20')
	, ('ripple', 'rgnmvwun6rhepyknjxqm99v4x', 'Korbit', 'Korbit 3', 'hildobby', date '2024-04-20')
	, ('ripple', 'rjze6ja93z0498z4j89pqjky266wzs0sz8k', 'Korbit', 'Korbit 4', 'hildobby', date '2024-04-20')
	, ('ripple', 'r898kj6esqnwz7wke82mwgw43vhu33ld7sx', 'Korbit', 'Korbit 5', 'hildobby', date '2024-04-20')
	, ('ripple', 'r2d8z07ja3t5d5dnxrenhp4gcjeszxpfflr', 'Korbit', 'Korbit 6', 'hildobby', date '2024-04-20')
	, ('ripple', 'rwvz93pcj653r5yd4hnd2d7np2drhdhyruj', 'Korbit', 'Korbit 7', 'hildobby', date '2024-04-20')
	, ('ripple', 'r2a8krlxjn6wdnhhszyrtzcugdsfa5zz4sy', 'Korbit', 'Korbit 8', 'hildobby', date '2024-04-20')
	, ('ripple', 'rsy5xw2hm885l5fv7s2hxzauz5fn9jayfmd', 'Korbit', 'Korbit 9', 'hildobby', date '2024-04-20')
	, ('ripple', 'r3nljshdmzakq7z5z4rexpk23mj8u8lmc8y', 'Korbit', 'Korbit 10', 'hildobby', date '2024-04-20')
	, ('ripple', 'ru20htqs7jhy0whazgd5v4626eq4vkxqz', 'Korbit', 'Korbit 11', 'hildobby', date '2024-04-20')
	, ('ripple', 'ru4d2ft7whqvl5d3kskxxhgeupnjjquzvt9', 'Korbit', 'Korbit 12', 'hildobby', date '2024-04-20')
	, ('ripple', 'r9WGxuEbUSh3ziYt34mBRViPbqVxZmwsu3', 'Korbit', 'Korbit 13', 'hildobby', date '2024-04-20')
	, ('ripple', 'rGU8q9qNCCQG2eMgJpLJJ1YFF5JAbntqau', 'Korbit', 'Korbit 14', 'hildobby', date '2024-04-20')
	, ('ripple', 'rGq74nAmw1ARejUNLYEBGxiQBaoNtryEe9', 'Korbit', 'Korbit 15', 'hildobby', date '2024-04-20')
	, ('ripple', 'rJRarS792K6LTqHsFkZGzM1Ue6G8jZ2AfK', 'Korbit', 'Korbit 16', 'hildobby', date '2024-04-20')
	, ('ripple', 'rNWWbLxbZRKd51NNZCEjoSNovrrx7yiPyt', 'Korbit', 'Korbit 17', 'hildobby', date '2024-04-20')
	, ('ripple', 'rsYFhEk4uFvwvvKJomHL7KhdF29r2sw9KD', 'Korbit', 'Korbit 18', 'hildobby', date '2024-04-20')
	, ('ripple', 'r0uachfk6rv3qhf3pp9z8a4z63ksc5qu0c2', 'Kraken', 'Kraken 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'r053c80nzlqapuatfslyhmns6sfn32qzz3x', 'Kraken', 'Kraken 2', 'hildobby', date '2024-04-20')
	, ('ripple', 'rjwwd03rzwhd2k6zh5uf6s2lwpuv3rq9zef', 'Kraken', 'Kraken 3', 'hildobby', date '2024-04-20')
	, ('ripple', 'r7ktuy5l0ltc4cv82xnaw4upaaw8y4rq6uy', 'Kraken', 'Kraken 4', 'hildobby', date '2024-04-20')
	, ('ripple', 'rrkende46hpmwwnzpctfu3szxpve2', 'Kraken', 'Kraken 5', 'hildobby', date '2024-04-20')
	, ('ripple', 'rj5vg73fxs6h6pmdjld387j5szkswc2y39r', 'Kraken', 'Kraken 6', 'hildobby', date '2024-04-20')
	, ('ripple', 'rzr368zdsxx5srtep7kepx523q2gd0ef', 'Kraken', 'Kraken 7', 'hildobby', date '2024-04-20')
	, ('ripple', 'rwu2frnqvtltfxt0qqql0elmhrpsexlzvea', 'Kraken', 'Kraken 8', 'hildobby', date '2024-04-20')
	, ('ripple', 'rkmk3kj86pxvf5nkxecdrw6nrx3zzy9xl7q', 'KuCoin', 'KuCoin 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'r2qmwkc32z4gfaemtjtx90am6e6rpl9sg', 'KuCoin', 'KuCoin 2', 'hildobby', date '2024-04-20')
	, ('ripple', 'r84g5xqvp2lkwmzvyec9frwk5w5f5v5w38', 'KuCoin', 'KuCoin 3', 'hildobby', date '2024-04-20')
	, ('ripple', 'rhhajm9fyd5h92dac8tnuur8jp', 'KuCoin', 'KuCoin 4', 'hildobby', date '2024-04-20')
	, ('ripple', 'rnkn3l908sn4hr94zk6wynp788', 'KuCoin', 'KuCoin 5', 'hildobby', date '2024-04-20')
	, ('ripple', 'rnv8khxe6fnl87ad8e4fjefu7rmp39pxl6', 'KuCoin', 'KuCoin 6', 'hildobby', date '2024-04-20')
	, ('ripple', 'rfsgspnfm8579ksurxppae66a', 'KuCoin', 'KuCoin 7', 'hildobby', date '2024-04-20')
	, ('ripple', 'rgzd8eajj2vrdjz4l0hvhjdlpmchstm', 'KuCoin', 'KuCoin 8', 'hildobby', date '2024-04-20')
	, ('ripple', 'rvlvsl6j58x38gzk0c8dgvfudsqcsdqyry', 'KuCoin', 'KuCoin 9', 'hildobby', date '2024-04-20')
	, ('ripple', 'r24qftnx7c0vw0y76d5kneekse7hl878yv', 'KuCoin', 'KuCoin 10', 'hildobby', date '2024-04-20')
	, ('ripple', 'r8nqmgm5qvuukuf5ux3m0fdthnhx033uv3v', 'KuCoin', 'KuCoin 11', 'hildobby', date '2024-04-20')
	, ('ripple', 'rsruy4e7gudvq6xv6vfs9hjs5pl3', 'KuCoin', 'KuCoin 12', 'hildobby', date '2024-04-20')
	, ('ripple', 'rcsckdwrezlw7gspefeyk9nyqmwpy3ea8ww', 'KuCoin', 'KuCoin 13', 'hildobby', date '2024-04-20')
	, ('ripple', 're6gf6qmmesjqfzn0vu2rmc6e00s4gjjle', 'KuCoin', 'KuCoin 14', 'hildobby', date '2024-04-20')
	, ('ripple', 'r7tvv0a2dcq6xp4dgr5nemfmnak2e2scn6h', 'KuCoin', 'KuCoin 15', 'hildobby', date '2024-04-20')
	, ('ripple', 'rxsrmrhsapvh9addyx6sh8j4rw0sn9xtur9', 'KuCoin', 'KuCoin 16', 'hildobby', date '2024-04-20')
	, ('ripple', 'rvwatdqyvpm04vs3k2x5r4ystnw7msrk', 'KuCoin', 'KuCoin 17', 'hildobby', date '2024-04-20')
	, ('ripple', 'rtr66auwm2tlcjp7cqgs8cx4p6q7lydrtwf', 'KuCoin', 'KuCoin 18', 'hildobby', date '2024-04-20')
	, ('ripple', 'rewa0m37wjmkcgs0w2gh9zhjqclkq74ckt4', 'KuCoin', 'KuCoin 19', 'hildobby', date '2024-04-20')
	, ('ripple', 'rqexqx7xzm4e57k6sm9r7zpuxwqxzn', 'KuCoin', 'KuCoin 20', 'hildobby', date '2024-04-20')
	, ('ripple', 'rfdmcftzxgrwcdts4plw4kaydjs5kq560l', 'KuCoin', 'KuCoin 21', 'hildobby', date '2024-04-20')
	, ('ripple', 'rh2gf28g6x56eeausc30gxewamj7qwtzfpg', 'KuCoin', 'KuCoin 22', 'hildobby', date '2024-04-20')
	, ('ripple', 'rl8qtujvj5jg47dc0p3w8sun6esaf', 'KuCoin', 'KuCoin 23', 'hildobby', date '2024-04-20')
	, ('ripple', 'r9hf2v2gf6haq7tsvckel7u6ja46fnqfkt6', 'KuCoin', 'KuCoin 24', 'hildobby', date '2024-04-20')
	, ('ripple', 'r77hw0dek5f8uvmeazd3egym2m3npjf2nvr', 'KuCoin', 'KuCoin 25', 'hildobby', date '2024-04-20')
	, ('ripple', 'rpm6caxcuewnme4at7h2skhv2rury274a0v', 'KuCoin', 'KuCoin 26', 'hildobby', date '2024-04-20')
	, ('ripple', 'rf9llyljmwy8egcjjsw0z0a8n5sgjlhceme', 'KuCoin', 'KuCoin 27', 'hildobby', date '2024-04-20')
	, ('ripple', 'r77yg4v7rwuugnwk8n8xqaydmakfu', 'KuCoin', 'KuCoin 28', 'hildobby', date '2024-04-20')
	, ('ripple', 'rprgh0vdq3pd8wctnzqyuwn5kp20hhfh6', 'KuCoin', 'KuCoin 29', 'hildobby', date '2024-04-20')
	, ('ripple', 'ruuuhvk8zjmw3a3dpwfvu2d0m9qyctv82', 'KuCoin', 'KuCoin 30', 'hildobby', date '2024-04-20')
	, ('ripple', 'r6py855gg77rwnhe9ege42x0t', 'KuCoin', 'KuCoin 31', 'hildobby', date '2024-04-20')
	, ('ripple', 'rt7rkpswpgmcag7txzf6ps9mvepwgndshqd', 'KuCoin', 'KuCoin 32', 'hildobby', date '2024-04-20')
	, ('ripple', 'rx54rsm5p74ksc6wkxr8y4ncejwh', 'KuCoin', 'KuCoin 33', 'hildobby', date '2024-04-20')
	, ('ripple', 'r2rquyvym4l6rtt7ayukpmw2sfxn7f', 'KuCoin', 'KuCoin 34', 'hildobby', date '2024-04-20')
	, ('ripple', 'r68wsj6c2zcu3f7nnj9um5pwdgr36m', 'KuCoin', 'KuCoin 35', 'hildobby', date '2024-04-20')
	, ('ripple', 'ra5g9tlvztr9qphzpruch30ka40e4tl48', 'KuCoin', 'KuCoin 36', 'hildobby', date '2024-04-20')
	, ('ripple', 'rvn9h2rqm7lcegzv79du2p5jezgept', 'KuCoin', 'KuCoin 37', 'hildobby', date '2024-04-20')
	, ('ripple', 'rjrwmklzgwme70h8mmrjcyueag', 'KuCoin', 'KuCoin 38', 'hildobby', date '2024-04-20')
	, ('ripple', 'r7cv2922cjua9xrezsda82gl8z653w6ru4', 'KuCoin', 'KuCoin 39', 'hildobby', date '2024-04-20')
	, ('ripple', 'r0al2lw7hqg90j05x9s0gxm5g4skmcslrut', 'KuCoin', 'KuCoin 40', 'hildobby', date '2024-04-20')
	, ('ripple', 'r66hlp4wufyy55m5a3jjl5grkmetygsg', 'KuCoin', 'KuCoin 41', 'hildobby', date '2024-04-20')
	, ('ripple', 'raQhkiDQE6SnfG5omcA1VwzqfXrwtNYBwWT', 'KuCoin', 'KuCoin 42', 'hildobby', date '2024-04-20')
	, ('ripple', 'r6l7dvacdppgucvnswwuyleaqh4dus8z8h', 'LAToken', 'LAToken 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1vx6kespckg27xu879kf40mpv4pmjxl0ad', 'LAToken', 'LAToken 2', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1v804l0u7q4ju4eyrd8ykvvdehryn6qyz3', 'LAToken', 'LAToken 3', 'hildobby', date '2024-04-20')
	, ('ripple', 'rp8wljyesl7s3x5vzq5z76t4nuj', 'LAToken', 'LAToken 4', 'hildobby', date '2024-04-20')
	, ('ripple', 'rd1z5xjeu4xw32jkckhj9jpc9dymj6a9h8y', 'LAToken', 'LAToken 5', 'hildobby', date '2024-04-20')
	, ('ripple', 'raxodbfdkbiw5s67mhff4w43pai', 'LAToken', 'LAToken 6', 'hildobby', date '2024-04-20')
	, ('ripple', 'ru7a870cmx2lcavt5um2nk6hh', 'LAToken', 'LAToken 7', 'hildobby', date '2024-04-20')
	, ('ripple', 'rYCLPcUHnuQQaau6DfsfFRixzh4HsoQwsc5', 'LAToken', 'LAToken 8', 'hildobby', date '2024-04-20')
	, ('ripple', 'rra14rvsrmq47pr9v5pkdkttftgh526jeel', 'LAToken', 'LAToken 9', 'hildobby', date '2024-04-20')
	, ('ripple', 'rra13x5jkljx69vyak47k9e9u9qetu0sckx', 'LAToken', 'LAToken 10', 'hildobby', date '2024-04-20')
	, ('ripple', 'rDuFr6ALjtZehcpFRKnBCCo79Gs76ww', 'LAToken', 'LAToken 11', 'hildobby', date '2024-04-20')
	, ('ripple', 'rklazrfy5spul4tqzc2jqfvuneszcjrdya6', 'LAToken', 'LAToken 12', 'hildobby', date '2024-04-20')
	, ('ripple', 'rSYPDSQ7yXpMFPq91Fb1QEWpMkRGfn', 'MEXC', 'MEXC 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'rBsHHp4zz1TWgHhZWvNcxD4A7DMbcoMm', 'MaskEX', 'MaskEX 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'rk8EeZgKCQkfd1KhAfRMBmH1Y4NYnaaL', 'MaskEX', 'MaskEX 2', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1q9phfjzqhcndne6chkxvtwt209n4335gh', 'NBX', 'NBX 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'ry659z5gnwn04r2as2hy9m4uuqvlhjm0gm7', 'NBX', 'NBX 2', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1qywum3fvtfrw4t52xk6y2ls9dsgkgwk75', 'NBX', 'NBX 3', 'hildobby', date '2024-04-20')
	, ('ripple', 'rnpae7f4q5d3uk2aw97ypjvvf3kjy43pl4a', 'NBX', 'NBX 4', 'hildobby', date '2024-04-20')
	, ('ripple', 'r03lmvcqc40udn6yuq4mve34ychy6a', 'NBX', 'NBX 5', 'hildobby', date '2024-04-20')
	, ('ripple', 'rcuzn62qjk3e3echysa9srg87la26x0qn2s', 'NBX', 'NBX 6', 'hildobby', date '2024-04-20')
	, ('ripple', 'rjwvam9dt2ftt4sqxqjf3twav0gdx0k0q2e', 'OKCoin', 'OKCoin 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'r9UaitLr4wahTwJN7DaMX7W1Z', 'OKX', 'OKX 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'ruqrghgcca950rvhtrg7cpd7u8k6svpzgzm', 'OKX', 'OKX 2', 'hildobby', date '2024-04-20')
	, ('ripple', 'rF2zwSJ9goQ9fZfYoti5LsUqqegb5RnA', 'OKX', 'OKX 3', 'hildobby', date '2024-04-20')
	, ('ripple', 'rCGm4Z3PDeYwo5a7GTT4jFYnRFBZbKr1', 'OKX', 'OKX 4', 'hildobby', date '2024-04-20')
	, ('ripple', 'rQUjX5nQ4zsiLBWjvFwW61jQHCqn', 'OKX', 'OKX 5', 'hildobby', date '2024-04-20')
	, ('ripple', 'r2tzhkxhad2wc0wm0ahlgpmhsr325mpssz8', 'OKX', 'OKX 6', 'hildobby', date '2024-04-20')
	, ('ripple', 'r9u28PDWUDyg3nR7HqxrUZ4jA', 'OKX', 'OKX 7', 'hildobby', date '2024-04-20')
	, ('ripple', 'rp6msfnqxrl2gp4phmq6mcz995xc6m8n6fn', 'OKX', 'OKX 8', 'hildobby', date '2024-04-20')
	, ('ripple', 'rah0s2epdp922d3e6r8w43uz0e8ujafcjeq', 'OKX', 'OKX 9', 'hildobby', date '2024-04-20')
	, ('ripple', 'rPr7MnizUAtWuDJmt919PZciSBvi', 'OKX', 'OKX 10', 'hildobby', date '2024-04-20')
	, ('ripple', 'rkQQd4zj8FsTmDhineKACFpQBZX', 'OKX', 'OKX 11', 'hildobby', date '2024-04-20')
	, ('ripple', 'rzt44pn93t9e3rwecw2dy4pcwc5gwugdjm3', 'OKX', 'OKX 12', 'hildobby', date '2024-04-20')
	, ('ripple', 'rx4rdcv85pteka94eskh740wrtgulg3tp7g', 'OKX', 'OKX 13', 'hildobby', date '2024-04-20')
	, ('ripple', 'rBwzgQ7REXS7iJp3Qz7k3rmFNNF', 'OKX', 'OKX 14', 'hildobby', date '2024-04-20')
	, ('ripple', 'r84gykqkctyhu3j4gckll9gqxktzqgx5a54', 'OKX', 'OKX 15', 'hildobby', date '2024-04-20')
	, ('ripple', 'rRpUhNWxB8Ydk9gvMou5yZNtXNynxcT', 'OKX', 'OKX 16', 'hildobby', date '2024-04-20')
	, ('ripple', 'rab6Wxddwb7jbWY8KYqJkewGA', 'OKX', 'OKX 17', 'hildobby', date '2024-04-20')
	, ('ripple', 'rqYRnrizFN7gTg5ouSbV3Tek9pab', 'OKX', 'OKX 18', 'hildobby', date '2024-04-20')
	, ('ripple', 'r9vobCoxMCWwxsS9doTP6HNQvx3op', 'OKX', 'OKX 19', 'hildobby', date '2024-04-20')
	, ('ripple', 'r2xntQYxtnBARQmzswbuB1hNhnKvkoV', 'OKX', 'OKX 20', 'hildobby', date '2024-04-20')
	, ('ripple', 'rcXhNG3BZPeaND3zCW7cHgzDVYp3', 'OKX', 'OKX 21', 'hildobby', date '2024-04-20')
	, ('ripple', 'rntsigARCZJxNv8NwfSmQxPsDi', 'OKX', 'OKX 22', 'hildobby', date '2024-04-20')
	, ('ripple', 'rysu5ykl5pdlk7d9j0z5rwak5h9rus6cx2u', 'OKX', 'OKX 23', 'hildobby', date '2024-04-20')
	, ('ripple', 'rfjg6zD3CTXSHLAiRcn3RFyBR8MMFR9', 'OKX', 'OKX 24', 'hildobby', date '2024-04-20')
	, ('ripple', 'rwXg5ZDY3tgvsYhkm9CnYV25N', 'OKX', 'OKX 25', 'hildobby', date '2024-04-20')
	, ('ripple', 'rVczaNDCyQoLe6JXV3vGFY8ce', 'OKX', 'OKX 26', 'hildobby', date '2024-04-20')
	, ('ripple', 'rAm9vhpo3KbMURMiR2CByP6BoM', 'OKX', 'OKX 27', 'hildobby', date '2024-04-20')
	, ('ripple', 'ra29r8ugx02ch7daja3s8u4247qw2d2jq', 'OKX', 'OKX 28', 'hildobby', date '2024-04-20')
	, ('ripple', 'rkZjRvmvhGmyGeH2x33ciUrZHarvE', 'OKX', 'OKX 29', 'hildobby', date '2024-04-20')
	, ('ripple', 'r6jT4DkAtnYYSHP99xtcai8LePLP', 'OKX', 'OKX 30', 'hildobby', date '2024-04-20')
	, ('ripple', 'r55T4o2Lv4Ygrsgat5W7iPnnd', 'OKX', 'OKX 31', 'hildobby', date '2024-04-20')
	, ('ripple', 'ryMZsWY2vFAWMiRbk6w64vt1w', 'OKX', 'OKX 32', 'hildobby', date '2024-04-20')
	, ('ripple', 'reufvQ3mW8aqXEk6MDceeoC8obw45cJ', 'OKX', 'OKX 33', 'hildobby', date '2024-04-20')
	, ('ripple', 'r9m8neUpfimUMwhzugKxtkZw6', 'OKX', 'OKX 34', 'hildobby', date '2024-04-20')
	, ('ripple', 'rtC9TUAg5gcjbcsVUiVzeDv85xLZRLad1Gi', 'OKX', 'OKX 35', 'hildobby', date '2024-04-20')
	, ('ripple', 'rz2wPoNH5FuDJ3x8dB3EEe3XGoSWy2485tA', 'OKX', 'OKX 36', 'hildobby', date '2024-04-20')
	, ('ripple', 'rDkwsdD48KteCJitQX5978Vh7KKxHo', 'OKX', 'OKX 37', 'hildobby', date '2024-04-20')
	, ('ripple', 'rTjAQmFFRmVqtnkceGvLJrMwUPgCUfLjciu', 'OKX', 'OKX 38', 'hildobby', date '2024-04-20')
	, ('ripple', 'rLQEyFyrcf1746pHATzAZQpC1uk3SJf2AHH', 'OKX', 'OKX 39', 'hildobby', date '2024-04-20')
	, ('ripple', 'rM7ZgKdcMq1jPAdqh9TMgdsaVR1DNq6kce3', 'OKX', 'OKX 40', 'hildobby', date '2024-04-20')
	, ('ripple', 'rA9qPLq88b7eqBXSUcdL1utUtUfcSD', 'OKX', 'OKX 41', 'hildobby', date '2024-04-20')
	, ('ripple', 'rjd19Fb3gmf3DCipGE8eWWJT2YHDXQ', 'OKX', 'OKX 42', 'hildobby', date '2024-04-20')
	, ('ripple', 'rzVdG1e3uNjMxrmaXDhLEZxQBbueq', 'OKX', 'OKX 43', 'hildobby', date '2024-04-20')
	, ('ripple', 'reG98kTh5FbZEjnXTXC5ANZtLz4YpHQ', 'OKX', 'OKX 44', 'hildobby', date '2024-04-20')
	, ('ripple', 'r4G3oDV1FJu1TtTv5M2u1cGbMDHnZzZpdn', 'OKX', 'OKX 45', 'hildobby', date '2024-04-20')
	, ('ripple', 'rUzWJkXyEtT8ekSSxkBYPqCvHpngcy6Fks', 'OKX', 'OKX 46', 'hildobby', date '2024-04-20')
	, ('ripple', 'rag5wJXFyzEhHyfta2FWLRPHkP9SNe5iPk', 'OKX', 'OKX 47', 'hildobby', date '2024-04-20')
	, ('ripple', 'rnHhjhpjchURKdfH7a4mch8gWJ47eBTgrm', 'OKX', 'OKX 48', 'hildobby', date '2024-04-20')
	, ('ripple', 'rKyo92WeVbajD8bNR9pm5s4z6t2JrgcYP', 'OKX', 'OKX 49', 'hildobby', date '2024-04-20')
	, ('ripple', 'rhcr95EAN24JPLpgSEf3mJKCkVKQspSUhR', 'OKX', 'OKX 50', 'hildobby', date '2024-04-20')
	, ('ripple', 'rR8ZiV5sRdVA3MBAc7qK9V7HDBpC3ou', 'OKX', 'OKX 51', 'hildobby', date '2024-04-20')
	, ('ripple', 'r4W5zDHzsyH2bCuhNbFJcMNguZ6iN', 'OKX', 'OKX 52', 'hildobby', date '2024-04-20')
	, ('ripple', 'rKHmh3feNWyfTW2GJefbs1zB9C', 'OKX', 'OKX 53', 'hildobby', date '2024-04-20')
	, ('ripple', 'rmvk0phrr9wfq8w493r096ssm2fgsw', 'OKX', 'OKX 54', 'hildobby', date '2024-04-20')
	, ('ripple', 'raMPCzMpBuogq9CDKyRaAhDMJ8YQK', 'OKX', 'OKX 55', 'hildobby', date '2024-04-20')
	, ('ripple', 'rcG5qQnZyfBn2WSwyN7KuJnUXnTN7NW', 'OKX', 'OKX 56', 'hildobby', date '2024-04-20')
	, ('ripple', 'rdFggMRKkYPvr4evciSWqgNKfj5Hf', 'OKX', 'OKX 57', 'hildobby', date '2024-04-20')
	, ('ripple', 'rBTLmsx482NR2HQ61rQZ85xwJ', 'OKX', 'OKX 58', 'hildobby', date '2024-04-20')
	, ('ripple', 'ryuoewUjfaU6Jio3SkjxeW2R2Unz', 'OKX', 'OKX 59', 'hildobby', date '2024-04-20')
	, ('ripple', 'r0kmedcenyhqaxlcsdfa8d2tul8e98w8g3r', 'OKX', 'OKX 60', 'hildobby', date '2024-04-20')
	, ('ripple', 'rJRaPMXgDcUJCTB4vhZQitnqe3xtxgDk', 'OKX', 'OKX 61', 'hildobby', date '2024-04-20')
	, ('ripple', 'rC1UcGxi9XcWRmWSkCBicXf2e6Wuj', 'OKX', 'OKX 62', 'hildobby', date '2024-04-20')
	, ('ripple', 'rfQU95Aib2TwSCTBprvXR8FBTXVLwae', 'OKX', 'OKX 63', 'hildobby', date '2024-04-20')
	, ('ripple', 'ru4KFC6tLSiSq7bTWUDyiXERwzdqKp', 'OKX', 'OKX 64', 'hildobby', date '2024-04-20')
	, ('ripple', 'rzz3xxCZQnF8mAxjxhUY9aqNiyeH', 'OKX', 'OKX 65', 'hildobby', date '2024-04-20')
	, ('ripple', 'rYhVnk1FsUCMUb5qkJjnNicQJWu8K', 'OKX', 'OKX 66', 'hildobby', date '2024-04-20')
	, ('ripple', 'rDaowmFZXaB2BkDf544Y7xvgNbA2n1', 'OKX', 'OKX 67', 'hildobby', date '2024-04-20')
	, ('ripple', 'rfuz4SjmP1NxENKsV9HFVBWYxf', 'OKX', 'OKX 68', 'hildobby', date '2024-04-20')
	, ('ripple', 'rzg8LyuNxxKPBSYcZCYXDtx2JWsXhC31', 'OKX', 'OKX 69', 'hildobby', date '2024-04-20')
	, ('ripple', 'rpK7ANdTcdYov3r4D23ga4CX8qQ8Ldz', 'OKX', 'OKX 70', 'hildobby', date '2024-04-20')
	, ('ripple', 'rPEVj5YoFdPufNR9qekJw8GLurT', 'OKX', 'OKX 71', 'hildobby', date '2024-04-20')
	, ('ripple', 'rBU4dXkYkZJbCZUSLLXVDWpEhvZ9BMyP', 'OKX', 'OKX 72', 'hildobby', date '2024-04-20')
	, ('ripple', 'rYXj8yeohaigVsgmQk89RnYBrffQ2y', 'OKX', 'OKX 73', 'hildobby', date '2024-04-20')
	, ('ripple', 'rTxtF4Fo2h9QnB2sM36Ab89WWehZv', 'OKX', 'OKX 74', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1FzdLztksKTKqCjCTNj9Rotya7DiL', 'OKX', 'OKX 75', 'hildobby', date '2024-04-20')
	, ('ripple', 'rn5FtfKC7Bqk7CdeYndZojR7BcT', 'OKX', 'OKX 76', 'hildobby', date '2024-04-20')
	, ('ripple', 'rkggC3LSY3FdQbNTWTpQcHcwhUJDy', 'OKX', 'OKX 77', 'hildobby', date '2024-04-20')
	, ('ripple', 'reGbQPFLQpZWc8PnVcCfEZkQzhX85', 'OKX', 'OKX 78', 'hildobby', date '2024-04-20')
	, ('ripple', 'r8XVsxtQAuAshCAfL6rjtc77DbzpQXT', 'OKX', 'OKX 79', 'hildobby', date '2024-04-20')
	, ('ripple', 'rCteCNoPDnX2GSAdtnJYCEtBKLB', 'OKX', 'OKX 80', 'hildobby', date '2024-04-20')
	, ('ripple', 'rv5kf7ej03t9j0ftfhezkv727pcr59vy7fw', 'OKX', 'OKX 81', 'hildobby', date '2024-04-20')
	, ('ripple', 'rEFGvWbAgs4jdG5z1y9AnA4a4Dy8FFJ', 'OKX', 'OKX 82', 'hildobby', date '2024-04-20')
	, ('ripple', 'rgH6adH1ev2Ven4SiTcdznfqd', 'OKX', 'OKX 83', 'hildobby', date '2024-04-20')
	, ('ripple', 'rMY7QJeCEQJQbQ9a62A7ndfTo8KC7Wn4dzt', 'OKX', 'OKX 84', 'hildobby', date '2024-04-20')
	, ('ripple', 'rdf80adfz7aekh5nejjfrp3jksc8r929svp', 'Robinhood', 'Robinhood 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'r5rwflyfu35q90y22raxdgcp4p', 'Robinhood', 'Robinhood 2', 'hildobby', date '2024-04-20')
	, ('ripple', 'rfyE1wqH1YY3u6BcauQwYuoD13GVtJErXq', 'Swissborg', 'Swissborg 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'rJCv19Du7VXqSuaYhaB3WpLRScTMpS7c52', 'Swissborg', 'Swissborg 2', 'hildobby', date '2024-04-20')
	, ('ripple', 'raFmDg78SG5AxPjXyRFnsy7zYujZGpJsVq', 'Swissborg', 'Swissborg 3', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1qxqut96hxv5zxmhcgspmnq9tuaf6xglvq', 'Swissborg', 'Swissborg 4', 'hildobby', date '2024-04-20')
	, ('ripple', 'rd4l9yuuetxlp6gkeufq5p6ftjswssk33fx', 'Swissborg', 'Swissborg 5', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1q9vrcmu4sr7yrspknu8gwrzgrs6wuh0e6', 'Swissborg', 'Swissborg 6', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1qy9ffv7zmqtmenskcnvsxszhv6zsls8gk', 'Swissborg', 'Swissborg 7', 'hildobby', date '2024-04-20')
	, ('ripple', 'r1qx2tzwkx4fjg8cg0htw27cje4029cmf2p', 'Swissborg', 'Swissborg 8', 'hildobby', date '2024-04-20')
	, ('ripple', 'rzd25840eesfu6q33tzaqxtrqarfuqe9wps', 'Swissborg', 'Swissborg 9', 'hildobby', date '2024-04-20')
	, ('ripple', 'rra143zgtv9ntwcfkslrjfp6c5nvdtl8lqm', 'WOOX', 'WOOX 1', 'hildobby', date '2024-04-20')
	, ('ripple', 'rra1t2gpws06d6yjauwhqy0cqtu2g5gwtgh', 'WOOX', 'WOOX 2', 'hildobby', date '2024-04-20')
    ) AS x (blockchain, address, cex_name, distinct_name, added_by, added_date)
