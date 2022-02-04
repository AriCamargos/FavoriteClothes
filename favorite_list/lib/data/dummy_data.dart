import 'package:favorit_list/models/category.dart';
import 'package:flutter/material.dart';

import '../models/clothes.dart';

// ignore: constant_identifier_names
const DUMMY_CATEGORIES = [
  Category(
    id: 'c1',
    title: 'Saia',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Top',
    color: Colors.amber,
  ),
  Category(
    id: 'c3',
    title: 'Calça',
    color: Colors.cyan,
  ),
  Category(
    id: 'c4',
    title: 'Vestido',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c5',
    title: 'Macação',
    color: Colors.deepOrange,
  ),
];

// ignore: constant_identifier_names
const DUMMY_CLOTHES = [
  Clothes(
    id: 'm1',
    categories: ['c1'],
    title: 'Saia',
    value: 12.4,
    sizeClothes: SizeClothes.small,
    colorClothes: ColorsClothes.black,
    imageUrl:
        'https://img.ltwebstatic.com/images3_pi/2021/08/20/1629437662545e178f6e56d7f03a6364c47231d9a9_thumbnail_600x.webp',
  ),
  Clothes(
    id: 'm2',
    categories: ['c2'],
    title: 'Cropped',
    value: 35.0,
    sizeClothes: SizeClothes.medium,
    colorClothes: ColorsClothes.black,
    imageUrl: 'https://img.ltwebstatic.com/images3_pi/2020/06/18/15924471677282e39e670913906994bf4bf9d0bcad_thumbnail_600x.webp',
  ),
  Clothes(
    id: 'm3',
    categories: ['c2'],
    title: 'Camisa',
    value: 100.3,
    sizeClothes: SizeClothes.large,
    colorClothes: ColorsClothes.beige,
    imageUrl: 'https://img.ltwebstatic.com/images3_pi/2021/08/02/1627880522c86162a774375a5d5a9016416f1f17df_thumbnail_600x.webp',
  ),
  Clothes(
    id: 'm4',
    categories: ['c3'],
    title: 'Calça Jeans',
    value: 20.3,
    sizeClothes: SizeClothes.extraLarge,
    colorClothes: ColorsClothes.green,
    imageUrl: 'https://dkdkf5wiwtstx.cloudfront.net/Custom/Content/Products/10/92/1092268_calca-jeans-wide-leg-ca-miriam-100317101_z2_637739467243548183.jpg',
  ),
  Clothes(
    id: 'm4',
    categories: ['c5'],
    title: 'Macacão Renda Preto',
    value: 100.3,
    sizeClothes: SizeClothes.medium,
    colorClothes: ColorsClothes.black,
    imageUrl: 'https://br.shein.com/Surplice-Neck-Sheer-Lace-Bishop-Sleeve-Romper-p-1166070-cat-1860.html?url_from=adpla-br-pla-swjumpsui07200429856-S_ssc&gclid=Cj0KCQiAuvOPBhDXARIsAKzLQ8EaFAB7j8CkjUC_6IuWGO0nLH6dUJ_DfIWZgtCr14K296hjJwPdEs0aAt8iEALw_wcB',
  ),
];
