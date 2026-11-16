// lib/data/mock_data.dart

import '../models/product.dart';

List<Product> globalCart=[];

final List rawData = [
  {
    "id": 1,
    "name": "iPhone 15 Pro",
    "tagline": "Titanium. So strong. So light. So Pro.",
    "description": "The iPhone 15 Pro is the first iPhone to feature an aerospace-grade titanium design...",
    "price": "\$999",
    "image": "https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_171549319?x=697&y=523&format=webp&quality=60&sp=yes&strip=yes&trim=yes&ex=697&ey=523&align=center&resizesource&unsharp=0.5x0.5"
  },
  {
    "id": 7,
    "name": "MacBook Pro 14\"",
    "tagline": "Pro to the max.",
    "description": "The MacBook Pro 14-inch is pro to the max, featuring the M3 Pro chip...",
    "price": "\$1,599",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLECovwtT9oorv6YbjUkwoGJbWtC1GX22Dp_Ie3q0ssQ&s=10"
  },
  {
    "id": 12,
    "name": "iPad Air",
    "tagline": "Light. Bright. Full of might.",
    "description": "The iPad Air combines serious performance with a thin and light design...",
    "price": "\$599",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFI82W-wQ8hE6jI8Hc-4l3YJSBSjBLZnJSEE4mFwznMA&s"
  },
  {
    "id": 20,
    "name": "HomePod Mini",
    "tagline": "Color-pop.",
    "description": "The HomePod Mini is jam-packed with innovation, delivering unexpectedly big sound...",
    "price": "\$99",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgGg3AMBH8YJougZuA0Eli8v1_Fqt5pNGhWD5ZEDh-wA&s"
  }
];

List<Product> productList = rawData.map((json) => Product.fromJson(json)).toList();