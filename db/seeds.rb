#coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
0.upto(10) do |x|
Company.create(title: '누야하우스', subtitle: '누야하우스입니다.', content:'<h1>누야하우스</h1><p>장애인들이 사회 구성원으로서 자립하고 성장할 수 있는 일터를 목표로 하며,</p>
      <p>모든 제품은 (주)닥터메이드와 공동개발을 통해 최고의 천연제품을 제공하기 위해 노력하고 있습니다.</p>', thumbnail_image: 'nuya_thumbnail.gif', big_image: 'nuya_main.png', homepage: 'iinme.co.kr', shopping: 'iinme.co.kr' )

end



