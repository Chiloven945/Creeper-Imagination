###职业查询###

#苦力怕
tellraw @a[tag=data_job_choose,scores={job_choose=1}] [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" >>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"你的职业选择：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"神秘苦力怕","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
    tag @a[tag=data_job_choose,scores={job_choose=1}] remove data_job_choose

#末影人
tellraw @a[tag=data_job_choose,scores={job_choose=2}] [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" >>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"你的职业选择：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"末影突袭者","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
    tag @a[tag=data_job_choose,scores={job_choose=2}] remove data_job_choose

#魔艺
tellraw @a[tag=data_job_choose,scores={job_choose=3}] [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" >>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"你的职业选择：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"魔艺鬼才","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
    tag @a[tag=data_job_choose,scores={job_choose=3}] remove data_job_choose

#元素

#循环
schedule function ci:loop/game/job/info 1t append
