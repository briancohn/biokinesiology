︠d7abed16-efa1-4da3-a4de-5a66255e6009︠
%default_mode r

︠e86297d2-3b9b-495a-a97a-1cdf463c3b48︠
forces = read.table('cat.birdy.forces.txt', sep = ' ')
︡c0916657-70ef-4ed5-8cbf-b14f633aa10a︡
︠daca4221-7370-4905-a378-a059515a8eb8︠
head(forces)
︡97106439-d6fc-4546-b3b0-319482c07d90︡{"stdout":"           V1           V2          V3\n1 -20.5905071 -19.67437884 -2.74284277\n2  -1.5284914  -1.43623322 -0.37438520\n3  -9.5059446  -9.26240564 -0.02457349\n4 -27.4936712  37.97411610 -7.89785268\n5  -1.2237316   0.93563102  0.17467153\n6   0.2277387   0.01463697  1.04143862"}︡
︠4f1efa18-37d4-4d0f-af3a-5b733843f7ef︠
norm_vec <- function(x) sqrt(sum(x^2))
︠900b4b48-2322-4b78-922a-4da34f645000︠
generator_magnitudes <- apply(forces, 1, norm_vec)
︠c6eaade8-edbe-41e0-94ed-fadaf6c1971c︠
︠0e1b4d44-a7b2-4c01-86ce-a35456de1f7e︠
hist(generator_magnitudes, breaks = 20, col='black', xlab= "Maximum force magnitude (Newtons)", ylab="Number of Generators", main="")
︡4e6cdadd-4dc0-425e-b0c0-14ad4b24df91︡{"stdout":"\n"}︡{"once":false,"file":{"show":true,"uuid":"2bc03bcd-8e8c-4c85-8249-1a44a1cb6f17","filename":"/tmp/1f33ab58-f5a2-4a77-80ac-69e1d5595205.svg"}}︡{"stdout":"\n"}︡
︠4e21ba41-a59d-4f52-8bd4-111e27541554︠
︡25e6aae0-4168-4e10-8665-4e5786c37926︡
︠4b42842a-9fd0-4d2e-8619-ed3f341d1d07︠









