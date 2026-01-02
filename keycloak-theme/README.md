# Fitness Devil - Keycloak Theme

This custom Keycloak theme matches the Fitness Devil landing page design with:
- Modern gradient background (zinc → orange → red)
- FD logo matching the app
- Gradient text titles
- Smooth animations and hover effects
- Mobile-responsive design
- Dark mode support

## Installation

### 1. Locate Your Keycloak Installation

Find where Keycloak is installed on your system:
```bash
# Common locations:
# - /opt/keycloak
# - ~/keycloak
# - /usr/local/keycloak
```

### 2. Copy Theme Files

Copy the `login` folder to Keycloak's themes directory:

```bash
# From your project directory
cp -r keycloak-theme/login /path/to/keycloak/themes/fitness-devil/
```

**Example:**
```bash
# If Keycloak is in /opt/keycloak
cp -r keycloak-theme/login /opt/keycloak/themes/fitness-devil/
```

### 3. Verify File Structure

Your Keycloak themes directory should now look like:
```
keycloak/themes/
├── fitness-devil/
│   └── login/
│       ├── theme.properties
│       └── resources/
│           └── css/
│               └── styles.css
├── keycloak/
└── keycloak.v2/
```

### 4. Apply the Theme in Keycloak

1. **Open Keycloak Admin Console**: `http://localhost:8543/admin`
2. **Select your realm** (e.g., `fitnessdevil`)
3. **Go to Realm Settings** (left sidebar)
4. **Click the "Themes" tab**
5. **Login theme** dropdown → Select **"fitness-devil"**
6. **Click "Save"**

### 5. Clear Cache (if needed)

If you don't see the theme immediately:

```bash
# Restart Keycloak
cd /path/to/keycloak
bin/kc.sh start-dev

# Or clear browser cache and refresh
```

## Testing

1. Go to your app: `http://localhost:3000`
2. Click "Get Started" or "Sign In"
3. You should see the Keycloak login page with:
   - Gradient background matching the landing page
   - FD logo in orange-red gradient box
   - Modern card design with hover effects
   - Gradient text for the title

## Customization

### Change Colors

Edit `login/resources/css/styles.css`:

```css
:root {
  --primary-orange: #ea580c;  /* Change this */
  --primary-red: #dc2626;      /* And this */
}
```

### Change Logo Text

Edit `login/resources/css/styles.css`, find:

```css
#kc-logo-wrapper::before {
  content: "FD";  /* Change to your text */
}
```

### Add Your Logo Image

1. Create `login/resources/img/logo.png`
2. Edit `login/resources/css/styles.css`:

```css
#kc-logo-wrapper::before {
  content: "";
  background-image: url('../img/logo.png');
  background-size: contain;
  background-repeat: no-repeat;
  background-position: center;
}
```

## Features

✅ Gradient background matching landing page
✅ Modern Inter font
✅ Smooth animations
✅ Hover effects on cards and buttons
✅ Focus states for accessibility
✅ Mobile responsive
✅ Dark mode support
✅ Social login buttons styled
✅ Error/success messages styled

## Troubleshooting

### Theme not showing?
1. Verify files are in correct location
2. Check theme name matches in Admin Console
3. Clear browser cache
4. Restart Keycloak

### Styles not applying?
1. Check that `styles.css` path is correct in `theme.properties`
2. Look for CSS errors in browser console
3. Verify `parent=keycloak.v2` in theme.properties

### Logo not showing?
1. Check CSS `::before` content
2. Verify font is loading (check Network tab)
3. Try using an image instead

## Support

For issues or questions:
- Check Keycloak logs: `keycloak/data/log/`
- Browser console for CSS errors
- Verify theme files are readable by Keycloak

## Preview

The theme creates a seamless experience:

```
Landing Page (/welcome) → Keycloak Login → Dashboard
  (gradient bg)            (same gradient)    (your app)
```

Users won't notice they've left your domain visually!
