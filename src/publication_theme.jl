function publication_theme()
    latextheme = theme_latexfonts()
    tickwidth = 0.8f0
    ticksize = 4f0
    update_theme!(latextheme;
      size = (500.0, 250.0),
        fontsize=10,
        colormap=:batlow,
        linewidth=1.0f0,
        rowgap=12.0f0,
        colgap=12.0f0,
        Axis=(
              ytickalign = 1,
              xtickalign = 1,
              xticksmirrored = true,
              yticksmirrored = true,
              spinewidth = tickwidth,
              xgridwith = tickwidth,
              ygridwith = tickwidth,
              xtickwidth = tickwidth,
              ytickwidth = tickwidth,
              xticksize = ticksize,
              yticksize = ticksize,
             ),
        Axis3=(
               xtickwidth = tickwidth,
               ytickwidth = tickwidth,
               ztickwidth = tickwidth,
               xspinewidth = tickwidth,
               yspinewidth = tickwidth,
               zspinewidth = tickwidth,
               xticksize = -ticksize, # directs ticks inwards
               yticksize = -ticksize,
               zticksize = -ticksize,
               xticklabelpad = -(5 + ticksize),
               yticklabelpad = -(5 + ticksize),
               zticklabelpad = -(5 + ticksize),
               xlabeloffset = 20f0,
               ylabeloffset = 20f0,
               zlabeloffset = 20f0,
              ),
        Colorbar=(
            tickalign=1,
            ticksmirrored=true,
            spinewidth=tickwidth,
            tickwidth=tickwidth,
            ticksize=4f0,
            labelpadding = 3f0,
            ),
        Legend = (
              padding = (5f0, 5f0, 4f0, 4f0),
              patchsize = (12f0, 12f0),
              rowgap = 2f0,
              framewidth = tickwidth,
             ),
        Lines = (
            cycle = Cycle([:linestyle], covary=true),
           ),
       )
    return latextheme
end


