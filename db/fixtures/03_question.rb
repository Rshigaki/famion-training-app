phase_marriage = Phase.find_by(name: '結婚前後')
phase_birth = Phase.find_by(name: '出産前後')

cate_relationship_period= Category.find_by(name: '交際期間')
cate_cohabitation = Category.find_by(name: '同棲')
cate_family_register = Category.find_by(name: '入籍')
cate_work = Category.find_by(name: '仕事')
cate_child = Category.find_by(name: '子供')
cate_night_life = Category.find_by(name: '夜の営み')

Question.seed(
    {id: 1,   phase: phase_marriage,   category: cate_family_register,     content: '入籍したいと考えますか？',   position: 1 },
    {id: 2,   phase: phase_marriage,   category: cate_relationship_period, content: 'いつまでに入籍したいですか？',   position: 2 },
    {id: 3,   phase: phase_marriage,   category: cate_cohabitation,        content: '同棲したいと思いますか？',   position: 3 },
    {id: 4,   phase: phase_birth,      category: cate_work,                content: '出産後も仕事を続けますか？',   position: 1 },
    {id: 5,   phase: phase_birth,      category: cate_child,               content: '子をいつ欲しいですか？',   position: 2 },
    {id: 6,   phase: phase_birth,      category: cate_night_life,          content: '夜の営みの頻度は？',   position: 3 },
)
