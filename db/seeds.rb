# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#No se usó faker porque es no tiene url, pero de haberlo hecho así la sitnaxis es

# 3 time do
#   title = Faker::Commerce.department
#     categories = Category.new(
#         title: title
#         parent_category: rand(1..4)
#         public: true
#     )
# end

# por cada elemento



    categories = Category.create([{
            title: "Noticias",
            parent_category: nil,
            public: true
        },{
            title: "Deportes",
            parent_category: "1",
            public: true
        },{
            title: "Nacional",
            parent_category: "1",
            public: true
        },{
            title: "Cultura",
            parent_category: "1",
            public: true
        }
    ])

    subjects = Subject.create([{
            name: "Video"
        },{
            name: "Blog"
        },{
            name: "Columna"
        },{
            name: "Diario"
        }
    ])
    bookmarks = Bookmark.create([{
            title: "Marca",
            url: "www.marca.com",
            category_id: 2,
            subject_id: 4
        },{
            title: "PrensaFutbol",
            url: "www.prensafutbol.cl",
            category_id: 2,
            subject_id: 3
        },{
            title: "As",
            url: "www.as.com",
            category_id: 2,
            subject_id: 2
        },{
            title: "Cdf Go",
            url: "www.Cdf.cl",
            category_id: 2,
            subject_id: 1
        },{
            title: "La Tercera",
            url: "www.latercera.cl",
            category_id: 3,
            subject_id: 1
        },{
            title: "Emol",
            url: "www.Emol.cl",
            category_id: 3,
            subject_id: 2
        },{
            title: "Lun",
            url: "www.Lun.cl",
            category_id: 3,
            subject_id: 3
        },{
            title: "Youtube",
            url: "www.youtube.cl",
            category_id: 3,
            subject_id: 4
        },{
            title: "Natgeo",
            url: "www.natgeo.com",
            category_id: 4,
            subject_id: 1
        },{
            title: "Disvoery",
            url: "www.discovery.com",
            category_id: 4,
            subject_id: 2
        },{
            title: "13C",
            url: "www.13c.cl",
            category_id: 4,
            subject_id: 3
        },{
            title: "Fayerwayer",
            url: "www.fayerwayer.cl",
            category_id: 4,
            subject_id: 4
        }
    ])


