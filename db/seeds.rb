#coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
0.upto(10) do |x|
Company.create(title: '누야하우스', subtitle: '누야하우스입니다.', content:'<h3 style="color:#e3742d;">자연과 함께하는 누야하우스</h3><img src="/images/image_01.png"><h3>회사소개</h3><p>장애인들이 사회 구성원으로서 자립하고 성장할 수 있는 일터를 목표로 하며,</p>
      <p>모든 제품은 (주)닥터메이드와 공동개발을 통해 최고의 천연제품을 제공하기 위해 노력하고 있습니다.</p>', thumbnail_image: 'nuya_thumbnail.gif', big_image: 'nuyamain.jpg', homepage: 'iinme.co.kr', shopping: 'iinme.co.kr' )

end

Company.all.each do |x|
  0.upto(10) do |y|
    photo = Photo.new
    photo.company_id = x.id
    photo.file_name = "p1.png"
    photo.link_url = "iinme.co.kr"
    photo.save
  end
end


