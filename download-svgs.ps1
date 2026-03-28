Set-Location "d:\Full Stack MEARN\2-HTML & CSS\icone"

Remove-Item *.png -Force -ErrorAction SilentlyContinue

$icons = @{
    "html.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/html5/html5-original.svg"
    "css.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/css3/css3-original.svg"
    "js.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/javascript/javascript-original.svg"
    "tailwind.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/tailwindcss/tailwindcss-original.svg"
    "react.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/react/react-original.svg"
    "node.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/nodejs/nodejs-original.svg"
    "express.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/express/express-original.svg"
    "mongoDB.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/mongodb/mongodb-original.svg"
    "Bootstrap.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/bootstrap/bootstrap-original.svg"
    "linkedin.svg" = "https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/linkedin/linkedin-original.svg"
}

foreach ($key in $icons.Keys) {
    if (-not (Test-Path $key)) {
        Invoke-WebRequest -Uri $icons[$key] -OutFile $key
    }
}
