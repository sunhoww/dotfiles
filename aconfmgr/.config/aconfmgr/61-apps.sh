# Fri Jan 17 07:45:52 PM IST 2025 - graphical apps

AddPackage firefox  # Fast, Private & Safe Web Browser
AddPackage inkscape # Professional vector graphics editor

AddPackage --foreign google-chrome    # The popular web browser by Google (Stable Channel)
AddPackage --foreign appimagelauncher # Helper for running and integrating AppImages

AddPackage gimp # GNU Image Manipulation Program
IgnorePath '/usr/lib/gtk-2.0/*'

AddPackage flatpak # Linux application sandboxing and distribution framework (formerly xdg-app)
IgnorePath '/var/lib/flatpak'

# Thu Mar 27 11:38:10 PM IST 2025 - 3d

AddPackage freecad            # Feature based parametric 3D CAD modeler
AddPackage --foreign cura-bin # State-of-the-art slicer app to prepare your 3D models for your 3D printer
