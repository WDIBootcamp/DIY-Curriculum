# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


###################Categories Creation###########################

category1 = Category.create(name: "art", img: "art.png")
category2 = Category.create(name: "cooking", img: "cooking.png")
category3 = Category.create(name: "economics", img: "economics.png")

category4 = Category.create(name: "education", img: "education.png")
category5 = Category.create(name: "history", img: "history.png")
category6 = Category.create(name: "mathematics", img: "mathmatics.png")

category7 = Category.create(name: "music", img: "music.png")
category8 = Category.create(name: "philosophy", img: "philosophy.png")
category9 = Category.create(name: "programming", img: "programming.png")

category10 = Category.create(name: "science", img: "science.png")
category11 = Category.create(name: "undecided", img: "owl_128.png")
category12 = Category.create(name: "writing", img: "writing.png")

content1 = Content.create(text: "first comment", source_url: "http://www.slate.com/articles/technology/bitwise/2014/02/apple_security_bug_a_critical_flaw_was_extraordinarily_simple.html")



###################Users Creation###########################

jerome = User.create(name: "Jerome Allouche", email: "jeromeallouche01@gmail.com", password: "jerome123", password_confirmation: "jerome123")
stephanie = User.create(name: "Stephanie Daffara", email: "ste.daff@gmail.com", password: "stephanie123", password_confirmation: "stephanie123")
nina = User.create(name: "Nina Pacifico", email: "nina@pacifico.com", password: "ninapac123", password_confirmation: "ninapac123")
yutaka = User.create(name: "Yutaka Houlette", email: "yutaka@houlette.com", password: "yutaka123", password_confirmation: "yutaka123")





###################Courses Creation###########################

jerome_course = Course.create( title: "WDI through Videos",
                                        description: "Following the curriculum of what I learned at WDI
                                                      mainly through youtube videos.",
                                        author_id: jerome.id,
                                        category_id: 10,
                                      )

stephanie_course = Course.create( title: "Painting",
                                        description: "Odd Future jean shorts YOLO lo-fi, occaecat tattooed retro Tonx. Laborum polaroid put a bird on it, authentic quinoa est duis locavore Austin you probably haven't heard of them. American Apparel Bushwick tote bag pickled. Authentic synth enim asymmetrical. Synth ea food truck, Brooklyn flexitarian pariatur 90's gluten-free paleo. Vice Etsy yr Pitchfork, dolore mixtape master cleanse disrupt sunt. Chambray actually fanny pack Vice anim Portland, nulla umami sint culpa Brooklyn Neutra aliquip.",
                                        author_id: stephanie.id,
                                        category_id: 1,
                                      )

yutaka_course = Course.create( title: "Intro to Computer Graphics",
                                        description: "An introduction of graphic design softwares such as Adobe Illustrator and Photoshop.
                                        This class is designed for students with basic computer skills, but no art background needed!",
                                        author_id: yutaka.id,
                                        category_id: 1,
                                      )

nina_course = Course.create( title: "Classical French Cooking",
                                        description: "This course is designed to teach classical french cuisine techniques and recipes",
                                        author_id: nina.id,
                                        category_id: 2,
                                      )

jerome_course2 = Course.create( title: "Intro to MacroEconomics",
                                        description: "I really like economics, so I thought I would share with you guys how I learned MacroEconomics,
                                        because all the college classes I've taken didn't teach me anything",
                                        author_id: jerome.id,
                                        category_id: 3,
                                      )

stephanie_course2 = Course.create( title: "How to be a Good teacher",
                                        description: "Nobody likes a bad teacher!
                                        Here are some of my sources based on the 6 qualities that make a good teacher.",
                                        author_id: stephanie.id,
                                        category_id: 4,
                                      )

yutaka_course2 = Course.create( title: "A history of the future",
                                        description: "Eventually the future is going to be history, so why not start learning about it now!
                                        Take a trip with me to learn about all things futurustic! What sort of technology can we expect from the next 100 years",
                                        author_id: yutaka.id,
                                        category_id: 5,
                                        )

nina_course2 = Course.create( title: "A journey through genres",
                                        description: "A library of classics for all genres of music! Updated Often!",
                                        author_id: nina.id,
                                        category_id: 7,
                                        )
# ______________________ = Course.create( title: "_________________",
#                                         description: "______________________.",
#                                         author_id: ________.id,
#                                         category_id: __,
#                                       )


###################Sections Creation###########################
# section1 = jerome_course.sections.create(  title: "The Command Line"  )
# section2 = jerome_course.sections.create(  title: "File IO, arrays, hashes"  )
# section3 = jerome_course.sections.create(  title: "Debugging"  )
# section4 = jerome_course.sections.create(  title: "Methods & Blocks"  )
# section5 = jerome_course.sections.create(  title: "Blocks, Proc, lambda"  )
# section6 = jerome_course.sections.create(  title: "Rspec Testing"  )


# section22 = stephanie_course.sections.create(  title: "Different paint brushes"  )
# section23 = stephanie_course.sections.create(  title: "Use a canvas"  )
# section24 = stephanie_course.sections.create(  title: "Oil vs Acrylics"  )
# section25 = stephanie_course.sections.create(  title: "Naked people"  )
# section26 = stephanie_course.sections.create(  title: "Dripping"  )
# section27 = stephanie_course.sections.create(  title: "Prepare your Canvas"  )
# section28= stephanie_course.sections.create(  title: "Advanced Techniques"  )
# section29= stephanie_course.sections.create(  title: "Colors"  )


# section30 = yutaka_course.sections.create( title: "Introduction to Graphic Design")
# section31 = yutaka_course.sections.create( title: "Beginner Adobe Photoshop")
# section32 = yutaka_course.sections.create( title: "Beginner Adobe Illustrator")

# section33 = nina_course.sections.create( title: "Algebra and Whole Numbers")
# section34 = nina_course.sections.create( title: "Using Decimals")
# section35 = nina_course.sections.create( title: "Number Theory")
# section36 = nina_course.sections.create( title: "Rational Numbers and Fractions")
# section37 = nina_course.sections.create( title: "Basic Operations and Rational Expressions")
# section38 = nina_course.sections.create( title: "Ratios, Proportions, and Percents")
# section39 = nina_course.sections.create( title: "Integers")
# section40 = nina_course.sections.create( title: "Exponents, Square Roots, and the Pythagorean Theorem")
# section41 = nina_course.sections.create( title: "Equations from Geometry")

# section41 = jerome_course2.sections.create( title: "PART ONE: BASIC CONCEPTS")
# section42 = jerome_course2.sections.create( title: "PART TWO: MICROECONOMICS: SUPPLY, DEMAND, AND PRODUCT MARKETS")
# section43 = jerome_course2.sections.create( title: "PART THREE: FACTOR MARKETS: LAND, LABOR, CAPITAL, AND INCOME DISTRIBUTION")
# section44 = jerome_course2.sections.create( title: "PART FOUR: APPLIED MICROECONOMICS, INTERNATIONAL TRADE, GOVERNMENT, AND THE ENVIRONMENT")
# section45 = jerome_course2.sections.create( title: "PART FIVE: MACROECONOMICS: THE STUDY OF ECONOMIC GROWTH AND BUSINESS CYCLES")
# section46 = jerome_course2.sections.create( title: "PART SIX: ECONOMIC GROWTH AND MACROECONOMIC POLICY")
# section47 = jerome_course2.sections.create( title: "PART SEVEN: UNEMPLOYMENT, INFLATION, AND ECONOMIC POLICY")

# section48 = stephanie_course2.sections.create( title: "Consistency")
# section49 = stephanie_course2.sections.create( title: "Fairness")
# section50 = stephanie_course2.sections.create( title: "A Positive Attitude")
# section51 = stephanie_course2.sections.create( title: "Flexibility")
# section52 = stephanie_course2.sections.create( title: "Sense of Humor")
# section53 = stephanie_course2.sections.create( title: "High Expectations")

# section54 = yutaka_course2.sections.create( title: "2020")
# section55 = yutaka_course2.sections.create( title: "2030")
# section56 = yutaka_course2.sections.create( title: "2040")
# section57 = yutaka_course2.sections.create( title: "2050")
# section58 = yutaka_course2.sections.create( title: "2060")
# section59 = yutaka_course2.sections.create( title: "2070")
# section60 = yutaka_course2.sections.create( title: "2080")
# section61 = yutaka_course2.sections.create( title: "2090")
# section62 = yutaka_course2.sections.create( title: "2100")


# section63 = nina_course2.sections.create( title: "Alternative Music")
# section64 = nina_course2.sections.create( title: "Classical Music")
# section65 = nina_course2.sections.create( title: "Electronic Music")
# section66 = nina_course2.sections.create( title: "Hip Hop / Rap")
# section67 = nina_course2.sections.create( title: "Jazz")
# section68 = nina_course2.sections.create( title: "Pop (Popular music)")
# section69 = nina_course2.sections.create( title: "R&B / Soul")
# section70 = nina_course2.sections.create( title: "Reggae")
# section71 = nina_course2.sections.create( title: "Rock")








# ___________= ______________.sections.create(  title: "_______________"  )

