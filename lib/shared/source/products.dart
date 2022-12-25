import 'package:e_commerce/shared/enum/enum_category_product.dart';
import 'package:e_commerce/shared/model/product_color_model.dart';
import 'package:e_commerce/shared/model/product_image_model.dart';
import 'package:e_commerce/shared/model/product_model.dart';
import 'package:e_commerce/shared/model/product_size_model.dart';
import 'package:flutter/material.dart';

abstract class SourceProducts {
// * Product Source random from:
// - https://www.tokopedia.com/p/fashion-pria
// - https://www.tokopedia.com/p/fashion-wanita
  static final List<ProductModel> listProduct = [
    // https://www.tokopedia.com/houseofcuffcom/houseofcuff-kaos-polos-pria-premium-katun-combed-lengan-pendek-hitam-hitam-m
    ProductModel(
      id: 1,
      name:
          "Houseofcuff Kaos Polos Pria Premium Katun Combed Lengan Pendek Hitam",
      productImageModel: const ProductImageModel(
        regularImageUrl:
            "https://images.tokopedia.net/img/cache/250-square/VqbcmM/2022/1/28/fb547cc4-392f-4afa-ad09-2465c17d540a.jpg",
        fullImageUrl:
            "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2022/1/28/fb547cc4-392f-4afa-ad09-2465c17d540a.jpg.webp?ect=4g",
      ),
      price: 69000,
      category: [EnumCategoryProduct.man, EnumCategoryProduct.sport],
      listColor: [
        ProductColorModel(name: "Black", color: Colors.black),
      ],
      listSize: [
        ProductSizeModel(size: "S"),
        ProductSizeModel(size: "M"),
        ProductSizeModel(size: "L"),
        ProductSizeModel(size: "XL"),
      ],
      description:
          "Deskripsi%20Produk%20%3A%0A%0A-%20Bahan%20Kain%20100%25%20Premium%20Cotton-Combed%2030s%20Ultrasoft.%20Bahan%20sejuk%20dan%20nyaman%20dipakai%2C%20gak%20gampang%20kusut%2C%20gak%20gampang%20berbulu%20dan%20mudah%20dicuci%20%0A%0A-%20Benang%20Jahitan%20100%25%20Cotton%20%0A%0A-%20Gramasi%20kain%20140-160%20gr%2Fm2%3B%20Tidak%20setebal%2024s%20dan%20tidak%20setipis%2040s.%20Gramasi%20terlaris%20saat%20ini.%20%0A%0A-%20Jahitan%20leher%3A%20Double%20Stick%3B%20lebih%20kuat%2C%20gak%20gampang%20kendor.%20%0A%0A-%20Jahitan%20pundak%3A%20Rantai%3B%20standar%20jahitan%20distro%20mall%0A%0A-%20Jahitan%20Tangan%20dan%20Bawah%3A%20Overdeck%2C%20Jahitan%20paling%20unik%20dan%20kuat.%20Salah%20satu%20ciri%20keunikan%20dari%20produk%20kami%20bisa%20dilihat%20dari%20bagian%20ini.%20%0A%0A-%20Model%20Unisex%2C%20bisa%20dipakai%20untuk%20Pria%20dan%20Wanita%20%0A%0A-%20Ukuran%20tersedia%20%28S%2C%20M%2C%20L%2C%20XL%2C%20XXL%2C%20XXXL%2C%20XXXXL%29%0A%0A-%20Setiap%20pembelian%20produk%20houseofcuff%20mendapatkan%20kemasan%20bubble%20wrap%20dengan%20plastik%20%2F%20kotak%20packaging",
    ),
    // https://www.tokopedia.com/matsudaapparel/matsuda-kaos-polo-shirt-pria-kerah-hokkaido-orange-xxl
    ProductModel(
      id: 2,
      name: "MATSUDA Kaos Polo Shirt Pria Kerah Hokkaido",
      productImageModel: const ProductImageModel(
        regularImageUrl:
            "https://images.tokopedia.net/img/cache/250-square/VqbcmM/2022/7/19/050b5fd1-dcea-449d-b35d-4302c3a9e345.jpg",
        fullImageUrl:
            "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2022/7/19/a7997638-ec97-47bb-8a38-082c2f70e27c.jpg.webp?ect=4g",
      ),
      price: 89000,
      category: [EnumCategoryProduct.man],
      listColor: [
        ProductColorModel(name: "Orange", color: Colors.orange),
        ProductColorModel(name: "Green", color: Colors.green),
      ],
      listSize: [
        ProductSizeModel(size: "S"),
        ProductSizeModel(size: "M"),
        ProductSizeModel(size: "L"),
        ProductSizeModel(size: "XL"),
        ProductSizeModel(size: "XXL"),
      ],
      description:
          "MATSUDA%20Kaos%20Polo%20Shirt%20Pria%20Kerah%20Hokkaido%0A%0ASize%3A%0Auk%20S%3A%20LD%20100%20cm%3B%20PJ%2068%20cm%0Auk%20M%3A%20LD%20104%20cm%3B%20PJ%2070%20cm%0Auk%20L%3A%20LD%20108%20cm%3B%20PJ%2072%20cm%0Auk%20XL%3A%20LD%20112%20cm%3B%20PJ%2074%20cm%0Auk%20XXL%3A%20LD%20116%20cm%3B%20PJ%2076%20cm%20%0AModel%20memakai%20ukuran%3A%20L%0A%0AT%20shirt%20Original%20Cotton%20Mix%0AMatsuda%20-%20Your%20Everyday%20Premium%20Clothing%0ABahan%20premium%20comfort%0A%0ASelamat%20berbelanja%20di%20akun%20official%20Matsuda.%0AProduk%20di%20akun%20ini%20adalah%20produk%20original%20seperti%20yang%20tedapat%20di%20outlet%20kami%20di%20mall%20mall.%0AJangan%20lupa%20follow%20akun%20kami%20untuk%20dapatkan%20voucher.%0A%0AMohon%20memesan%20sesuai%20variasi%20warna%20dan%20size%20sesuai%20yang%20diinginkan.%20%0AJangan%20ditulis%20di%20NOTE%21%21%20Pesanan%20akan%20diproses%20sesuai%20order",
    ),
    // https://www.tokopedia.com/hscooriginal13/hsco-oversized-crewneck-shinchan-x-tahilalats-poop-xl
    ProductModel(
      id: 3,
      name: "HSCO Oversized Crewneck Shinchan X Tahilalats Poop",
      productImageModel: const ProductImageModel(
        regularImageUrl:
            "https://images.tokopedia.net/img/cache/250-square/VqbcmM/2022/10/20/d7b62388-1ee0-4fab-a037-0571663154e6.jpg",
        fullImageUrl:
            "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2022/10/20/d7b62388-1ee0-4fab-a037-0571663154e6.jpg.webp?ect=4g",
      ),
      price: 320000,
      category: [EnumCategoryProduct.man, EnumCategoryProduct.winter],
      listColor: [],
      listSize: [
        ProductSizeModel(size: "S"),
        ProductSizeModel(size: "M"),
        ProductSizeModel(size: "L"),
        ProductSizeModel(size: "XL"),
      ],
      description:
          "Official%20Product%20Shinchan%20X%20Thailalalts%20%26%20HSCO%0A%0ACotton%20Fleece%20300gsm.%20Bahan%20tebal%2C%20lembut%2C%20dan%20nyaman.%0ASablon%20menggunakan%20tinta%20plastisol%20dan%20DST%20terbaik%0AOversized%20Fit%0A%0A%C2%A9%20USUI%20YOSHITO%201992-2022%20Licensed%20by%20Animation%20Int%27l%0A%C2%A9%202022%20Tahilalats.%20All%20Rights%20Reserved%0A%0ASize%20Chart%20%28in%20cm%29%0AS%3A%20Length%2068%20x%20Width%2060cm%0AM%3A%20Length%2070%20x%20Width%2063cm%0AL%3A%20Length%2073%20x%20Width%2066cm%0AXL%3A%20Length%2076%20x%20Width%2069cm%0A%0AMohon%20tanyakan%20ketersediaan%20produk%20%26%20size%20terlebih%20dulu%20kepada%20admin%20sebelum%20melakukan%20pemesanan.",
    ),
    // https://www.tokopedia.com/kalibreid/crayon-shinchan-x-tahilalats-kalibre-jaket-970452-m
    ProductModel(
      id: 4,
      name: "CRAYON SHINCHAN X TAHILALATS | KALIBRE Jaket 970452",
      productImageModel: const ProductImageModel(
        regularImageUrl:
            "https://images.tokopedia.net/img/cache/250-square/VqbcmM/2022/11/28/a80c4247-1862-4d3a-9c33-fcb18233b4d4.jpg",
        fullImageUrl:
            "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2022/11/28/a80c4247-1862-4d3a-9c33-fcb18233b4d4.jpg.webp?ect=4g",
      ),
      price: 499000,
      category: [EnumCategoryProduct.sport],
      listColor: [],
      listSize: [
        ProductSizeModel(size: "M"),
        ProductSizeModel(size: "L"),
        ProductSizeModel(size: "XL"),
      ],
      description:
          "kalibre%20x%20shinchan%20jaket%20%0ASIZE%20%3A%20M%20%2C%20L%20%2C%20XL%20",
    ),
    // https://www.tokopedia.com/chocooclothing/vest-knit-rompi-wanita-bahan-rajut-fashion-korea-style-black
    ProductModel(
      id: 5,
      name: "Vest Knit | Rompi Wanita Bahan Rajut | Fashion Korea Style",
      productImageModel: const ProductImageModel(
        regularImageUrl:
            "https://images.tokopedia.net/img/cache/250-square/VqbcmM/2021/12/16/6405c1d3-1252-439b-ac39-627abf0ba7e1.jpg",
        fullImageUrl:
            "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/12/16/6405c1d3-1252-439b-ac39-627abf0ba7e1.jpg.webp?ect=4g",
      ),
      price: 88000,
      category: [EnumCategoryProduct.woman],
      listColor: [
        ProductColorModel(name: "Pink", color: Colors.pink),
        ProductColorModel(name: "Black", color: Colors.black),
        ProductColorModel(name: "Green", color: Colors.green),
      ],
      listSize: [],
      description:
          "ROMPI%20DIJUAL%20TANPA%20KEMEJA%20PUTIH%0A%0A%0A%0APanjang%2050cm%0ALD%20%3A%20110cm%0A%0A%F0%9F%92%8C%20Mohon%20Dibaca%20Sebelum%20Pesan%20%F0%9F%92%8C%0A%0A%F0%9F%92%9D%20Mohon%20Lakukan%20Video%20Unboxing%20Saat%20Paket%20Diterima%0A%0A%F0%9F%92%96%20Jika%20ada%20kekurangan%20barang%20atau%20barang%20defect%2C%20silahkan%20kirimkan%20video%20unboxing%20di%20chat%2C%20kami%20akan%20dengan%20senang%20hati%20membantu%0A%0A%F0%9F%92%9B%20TIDAK%20Menerima%20Sisipan%20WARNA%20dan%20VARIASI%20di%20CATATAN%20%2F%20VIA%20CHAT%0A%0A%F0%9F%92%99%20Cek%20dahulu%20sebelum%20Checkout%20kami%20tidak%20terima%20Ganti%20Nama%2C%20Nomor%2C%20Alamat%2C%20atau%20Barang%20setelah%20Checkout%0A%0A%F0%9F%92%97%20Semua%20foto%20adalah%20realpict%2C%20Akan%20ada%20sedikit%20perbedaan%20warna%20antara%20foto%20dan%20asli%20karena%20pengaruh%20kamera%20dan%20layar%0A%0A%F0%9F%92%95%20Happy%20Shopping%20%3A%29%20%F0%9F%92%95",
    ),
    // https://www.tokopedia.com/flostiedyeshop/tie-dye-t-shirt-reverse-dye-crumple-l
    ProductModel(
      id: 6,
      name: "Tie Dye T-Shirt Reverse Dye Crumple",
      productImageModel: const ProductImageModel(
        regularImageUrl:
            "https://images.tokopedia.net/img/cache/250-square/VqbcmM/2020/7/8/cc55bf49-38da-4feb-b577-f9ab05d739f5.jpg",
        fullImageUrl:
            "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2020/7/8/cc55bf49-38da-4feb-b577-f9ab05d739f5.jpg.webp?ect=4g",
      ),
      price: 94000,
      category: [EnumCategoryProduct.man],
      listColor: [],
      listSize: [
        ProductSizeModel(size: "S"),
        ProductSizeModel(size: "M"),
        ProductSizeModel(size: "L"),
        ProductSizeModel(size: "XL"),
        ProductSizeModel(size: "XXL"),
        ProductSizeModel(size: "XXXL"),
      ],
      description:
          "MATSUDA%20Kaos%20Polo%20Shirt%20Pria%20Kerah%20Hokkaido%0A%0ASize%3A%0Auk%20S%3A%20LD%20100%20cm%3B%20PJ%2068%20cm%0Auk%20M%3A%20LD%20104%20cm%3B%20PJ%2070%20cm%0Auk%20L%3A%20LD%20108%20cm%3B%20PJ%2072%20cm%0Auk%20XL%3A%20LD%20112%20cm%3B%20PJ%2074%20cm%0Auk%20XXL%3A%20LD%20116%20cm%3B%20PJ%2076%20cm%20%0AModel%20memakai%20ukuran%3A%20L%0A%0AT%20shirt%20Original%20Cotton%20Mix%0AMatsuda%20-%20Your%20Everyday%20Premium%20Clothing%0ABahan%20premium%20comfort%0A%0ASelamat%20berbelanja%20di%20akun%20official%20Matsuda.%0AProduk%20di%20akun%20ini%20adalah%20produk%20original%20seperti%20yang%20tedapat%20di%20outlet%20kami%20di%20mall%20mall.%0AJangan%20lupa%20follow%20akun%20kami%20untuk%20dapatkan%20voucher.%0A%0AMohon%20memesan%20sesuai%20variasi%20warna%20dan%20size%20sesuai%20yang%20diinginkan.%20%0AJangan%20ditulis%20di%20NOTE%21%21%20Pesanan%20akan%20diproses%20sesuai%20order",
    ),
    // https://www.tokopedia.com/berrybartonoffic/kacamata-hitam-polarized-pria-mengemudi-sunglasses-photocromic-8206-sand-black?src=topads
    ProductModel(
      id: 7,
      name:
          "Kacamata Hitam Polarized Pria Mengemudi Sunglasses Photocromic 8206",
      productImageModel: const ProductImageModel(
        regularImageUrl:
            "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/11/21/e807a1f2-d988-4334-9eb1-9a8a855ee54a.png.webp?ect=4g",
        fullImageUrl:
            "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2022/2/18/aa2a7499-08e4-493f-b578-c9ea02fca035.png.webp?ect=4g",
      ),
      price: 85000,
      category: [
        EnumCategoryProduct.man,
        EnumCategoryProduct.sport,
        EnumCategoryProduct.winter
      ],
      listColor: [ProductColorModel(name: "Sand Black", color: Colors.black)],
      listSize: [],
      description:
          "Berry%20Barton%20Official%20Shop%20adalah%20akun%20resmi%20Berry%20Barton%20di%20Tokopedia.%0A%0ASunglasses%20Polarized%20adalah%20kacamata%20yang%20sempurna%20untuk%20membantu%20Anda%20melihat%20kehidupan%20lebih%20cerah%20dengan%20gaya%20yang%20membuat%20anda%20menjadi%20lebih%20percaya%20diri%20dengan%20harga%20yang%20terjangkau%2C%20cocok%20untuk%20perempuan%20dan%20laki%20laki%2C%20anak%20muda%2C%20orang%20tua%20maupun%20anak-anak.%20Kacamata%20ini%20sangat%20cocok%20digunakan%20saat%20mengendarai%20kendaraan%20baik%20untuk%20siang%20hari%20maupun%20malam%20hari%20dan%20kacamata%20ini%20sudah%20disertai%20dengan%20lensa%20Photocromic%20Blueray.%0A%0ATipe%20%3A%20Berrybarton%208206%0A%0ABahan%20%3A%20PC%0A%0AUkuran%3A%0ATotal%20Width%20%3A%20142%20mm%0ALens%20Width%20%3A%2053%20mm%0ALens%20height%20%3A%2039%20mm%0ANose%20Pad%20%3A%2020%20mm%0AArm%20Length%20%3A%20138%20mm",
    ),
  ];
}
