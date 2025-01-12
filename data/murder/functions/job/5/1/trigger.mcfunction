scoreboard players set @a[advancements={ murder:job/5/1/hit=true}] murder_type 5001000

scoreboard players operation @a[advancements={ murder:job/5/1/hit=true},limit=1] murder_last_source = @s id

scoreboard players set @a[advancements={ murder:job/5/1/hit=true},limit=1] murder_time_to_reset 600

scoreboard players operation @s job_5_3_last_target = @a[advancements={ murder:job/5/1/hit=true},limit=1] id

advancement revoke @a only murder:job/5/1/hit
advancement revoke @a only murder:job/5/1/hit_source

