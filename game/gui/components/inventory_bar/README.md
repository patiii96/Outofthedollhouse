# Inventory Bar - Multi-Directional Slide

This inventory bar component has been enhanced to support sliding in from different directions.

## Features

- **Multi-directional sliding**: Choose from TOP, BOTTOM, LEFT, or RIGHT slide directions
- **Editor configuration**: Slide direction can be set directly in the Godot editor
- **Automatic positioning**: The bar automatically positions itself based on the selected direction
- **Input zone adaptation**: The mouse input zone adapts to the slide direction

## Usage

### In the Editor

1. Select the `InventoryBar` node in your scene
2. In the Inspector, find the "Slide Direction" property
3. Choose from the dropdown:
   - **TOP**: Slides from the top of the screen (default)
   - **BOTTOM**: Slides from the bottom of the screen
   - **LEFT**: Slides from the left side of the screen
   - **RIGHT**: Slides from the right side of the screen

### Configuration Options

- **Always Visible**: When enabled, the bar stays visible and doesn't slide
- **Hide When GUI Blocked**: Automatically hide the bar when the GUI is blocked
- **Input Zone Height**: Size of the mouse input zone (height for TOP/BOTTOM, width for LEFT/RIGHT)
- **Slide Direction**: The direction from which the bar slides in

## Technical Details

### Slide Directions

- **TOP**: Bar slides down from above the screen
- **BOTTOM**: Bar slides up from below the screen  
- **LEFT**: Bar slides right from the left side of the screen
- **RIGHT**: Bar slides left from the right side of the screen

### Input Zones

The mouse input zone automatically adjusts based on the slide direction:
- **TOP/BOTTOM**: Extends the height of the input zone
- **LEFT/RIGHT**: Extends the width of the input zone

### Animation

The sliding animation uses:
- **Open**: Exponential ease-out transition (0.5 seconds)
- **Close**: Sine ease-in transition (0.2 seconds)

## Compatibility

This enhancement is fully backward compatible. Existing inventory bars will continue to work with the default TOP slide direction. 