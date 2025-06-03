-- On définit notre touche leader sur espace
vim.g.mapleader = " "

-- Raccourci pour la fonction set
local keymap = vim.keymap.set
-- local unmap = vim.keymap.del

-- on efface le surlignage de la recherche
keymap("n", "<leader>h", ":nohl<CR>", { desc = "Effacer le surlignage de la recherche" })

-- Changement de fenêtre avec Ctrl + déplacement uniquement au lieu de Ctrl-w + déplacement
keymap("n", "<C-j>", "<C-w>j", { desc = "Déplace le curseur dans la fenêtre de gauche" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Déplace le curseur dans la fenêtre droite" })

-- Navigation entre les buffers
keymap("n", "<C-l>", ":bnext<CR>", opts)
keymap("n", "<C-h>", ":bprevious<CR>", opts)

-- Fermer le buffer avec <leader>x
keymap("n", "<leader>x", ":bd<CR>", { desc = "Fermer le buffer" })

-- Commenter une ligne ou une sélection avec <leader>/
keymap("n", "<leader>/", "gcc", { desc = "Commenter la ligne", remap = true })
keymap("v", "<leader>/", "gc", { desc = "Commenter la sélection", remap = true })

-- Retirer les mappings par défauts
-- unmap("n", "<leader>s")
-- unmap("n", "<leader>S")
