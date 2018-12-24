# Scripts

## Screensaver
Screensaver requires:
`https://github.com/will8211/unimatrix`

## Trackpad
Set natural scrolling both vertical and horizontal

```xinput list```

Pick ID of Trackpad

```xinput list-props <id>```

Look for ```Synaptics Scrolling Distance``` -> number in () used as identifier

```xinput set-prop (identifier) <negative value>, <negative value>```
