// Copyright (c) 2022, WooSignal Ltd.
// All rights reserved.
//
// Redistribution and use in source and binary forms are permitted
// provided that the above copyright notice and this paragraph are
// duplicated in all such forms and that any documentation,
// advertising materials, and other materials related to such
// distribution and use acknowledge that the software was developed
// by the WooSignal. The name of the
// WooSignal may not be used to endorse or promote products derived
// from this software without specific prior written permission.
// THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR
// IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.

import 'package:woosignal/models/links.dart';

class TaxClass {
  String? slug;
  String? name;
  Links? links;

  TaxClass({this.slug, this.name, this.links});

  TaxClass.fromJson(Map<String, dynamic> json) {
    slug = json['slug'];
    name = json['name'];
    links = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['slug'] = slug;
    data['name'] = name;
    if (links != null) {
      data['_links'] = links!.toJson();
    }
    return data;
  }
}
