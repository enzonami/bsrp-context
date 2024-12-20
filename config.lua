Config = {}

Config.DialogTargets = {
    npc_1 = {
        { 
            coords = vector3(1733.36, 6409.65, 35.26), 
            radius = 2.0, 
            label = "What's up?", 
            messages = {
                "Hey, finally someone who looks desperate enough to work. Wanna make some cash?",
                "What? Never seen an opportunity before? Let’s talk money.",
                "Oh great, you again. Wanna make yourself useful this time?",
                "Look at you. Standing around like you’re important. Wanna earn something real?",
                "Sup, genius? I’ve got something that'll make your day... or not.",
                "You’ve got that ‘I need money’ look. Lucky for you, I’m feeling generous.",
                "Stop wasting time standing around. Let’s make a deal.",
                "Oh wow, it’s my favorite time-waster. Wanna change that and earn some cash?",
                "C’mon, I don’t have all day. Money’s waiting. You want in or not?",
                "Standing there looking dumb doesn’t pay. I do. Let’s talk."
            }, 
            step = 1 
        },
        { 
            coords = vector3(1733.36, 6409.65, 35.26), 
            radius = 2.0, 
            label = "How?", 
            messages = {
                "Simple: You move 'products' for me, I pay you. Got it?",
                "How? You do as I say, and money shows up in your hands.",
                "You pick stuff up. You drop stuff off. You count your money. Easy.",
                "Not rocket science. You move things from A to B for cash.",
                "You work. I pay. Isn’t that the dream?",
                "How? With your feet, genius. You take stuff places, and I reward you.",
                "Just do what I tell you. No thinking required. Money will appear.",
                "It’s called a hustle. I tell you what to do, and you get paid. Simple.",
                "Ever heard of working smart? This is the ‘get paid quick’ kind of gig.",
                "Trust me, the how doesn’t matter. Just focus on the ‘you get paid’ part."
            }, 
            step = 2 
        },
        { 
            coords = vector3(1733.36, 6409.65, 35.26), 
            radius = 2.0, 
            label = "What kind of products?", 
            messages = {
                "Curious, are we? Don’t ask questions you don’t want answers to.",
                "Stuff people want. Or maybe don’t want. Doesn’t matter to you.",
                "They’re just... items. Let’s leave it at that.",
                "Why the curiosity? Just think of it as 'valuable goods.'",
                "Things people will pay for. That’s all you need to know.",
                "Products that move fast. That’s all you need to know. Trust me.",
                "Goods that are hot. And by hot, I mean in-demand. Get it?",
                "Just think of it as 'inventory.' No need to overthink it.",
                "The kind that you don’t need to ask about. Just deliver them.",
                "Oh, so you’re an investigator now? Just deliver the goods."
            }, 
            step = 3 
        },
        { 
            coords = vector3(1733.36, 6409.65, 35.26), 
            radius = 2.0, 
            label = "Where am I going?", 
            messages = {
                "I’ll mark the spots on your map. Don’t mess it up.",
                "Just check your GPS. You can read, right?",
                "The map’s got it all. Don’t overcomplicate things.",
                "Relax, I’ll mark the places. Just follow the dots.",
                "Spots are marked. Go there. Do the thing.",
                "Where else? The places I mark. No guessing required.",
                "I’m not here to hold your hand. The map will tell you.",
                "It’s all on your GPS. If you get lost, that’s on you.",
                "The map has the answers. Use your eyes, not your mouth.",
                "I’ll mark it. Just make sure you don’t screw it up."
            }, 
            step = 4 
        },
        { 
            coords = vector3(1733.36, 6409.65, 35.26), 
            radius = 2.0, 
            label = "Then what?", 
            messages = {
                "Sell the stuff, collect your cut, and act like we never spoke.",
                "Make your cash and stay quiet. Sound easy enough?",
                "Do your job, take the cash, and don’t screw it up.",
                "Sell whatever you find and move on. Simple.",
                "Pocket your cash and go about your day. No drama.",
                "Once you sell, your hands are clean. Easy, right?",
                "Do the drop, make the money, and forget this ever happened.",
                "It’s straightforward. Drop it, sell it, collect it. Done.",
                "Once the deal’s done, we’re done. Keep it simple.",
                "Get it sold and get out. No need to linger."
            }, 
            step = 5 
        }
    },
    -- Be sure each NPC has a unique name.
    -- npc_2 = {
    --     { 
    --         coords = vector3(2000.00, 3000.00, 40.00), 
    --         radius = 2.5, 
    --         label = "Yo!", 
    --         messages = {
    --             "You look like you need a job. Lucky for you, I’ve got one.",
    --             "Sup? Wanna make some easy cash, or are you too good for it?",
    --             "I see potential. You wanna make it work or just stand there?",
    --             "Yo! I’ve got a gig for you. Don’t waste my time.",
    --             "Come here. I’ve got an offer you probably can’t refuse."
    --         }, 
    --         step = 1 
    --     },
    --     { 
    --         coords = vector3(2000.00, 3000.00, 40.00), 
    --         radius = 2.5, 
    --         label = "How?", 
    --         messages = {
    --             "It’s easy: move stuff for me, get paid. Capiche?",
    --             "Just follow my instructions, and cash is yours.",
    --             "I tell you where to go, you do the work, and you get paid.",
    --             "Move the 'goods' to where I tell you. That’s it.",
    --             "Do what I say, and you’ll have money in your hands fast."
    --         }, 
    --         step = 2 
    --     }
}