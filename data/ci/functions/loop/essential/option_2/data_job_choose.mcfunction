#job choose
tellraw @a[tag=data_job_choose,scores={job_choose=0}] [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" >>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"你的职业选择：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"未选择","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tag @a[tag=data_job_choose,scores={job_choose=0}] remove data_job_choose

#循环
schedule function ci:loop/essential/option_2/data_job_choose 1t append
