function ColorMyPencils(color)
    color = color or "onedark"
    vim.cmd.colorscheme(color)

    require('onedark').setup  {
        -- Main options --
        style = 'cool', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    }
end


ColorMyPencils()
