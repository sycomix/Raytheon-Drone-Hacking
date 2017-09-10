.class public Lcom/parrot/freeflight/about/LegalMentionsActivity;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "LegalMentionsActivity.java"


# static fields
.field private static final COUNTRY_PREFIX:Ljava/lang/String; = "-r"

.field private static final DEFAULT_URL:Ljava/lang/String;

.field public static final EXTRA_IS_FROM_SPLASH_SCREEN:Ljava/lang/String; = "is_from_splash_screen"

.field private static final FILE_BASE:Ljava/lang/String; = "legal_mentions/legals_mentions-"

.field private static final FILE_EXT:Ljava/lang/String; = ".html"

.field public static final PREFS_LEGALS_MENTIONS_ACCEPTED:Ljava/lang/String; = "legal_mentions_accepted"

.field public static final SHARED_PREFERENCES_LEGALS_MENTIONS_NAME:Ljava/lang/String; = "legal_mentions_shared_preferences"

.field private static final URL_BASE:Ljava/lang/String; = "file:///android_asset/"


# instance fields
.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/legal_mentions/legals_mentions-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/about/LegalMentionsActivity;->DEFAULT_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/about/LegalMentionsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/about/LegalMentionsActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->applyUiTheme()V

    return-void
.end method

.method private applyUiTheme()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/about/LegalMentionsActivity;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/about/LegalMentionsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 145
    return-void
.end method

.method private getUrl()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 126
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "lang":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "legal_mentions/legals_mentions-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".html"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "url":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 135
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:///android_asset/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 140
    .end local v0    # "is":Ljava/io/InputStream;
    :goto_1
    return-object v3

    .line 130
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "legal_mentions/legals_mentions-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".html"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "url":Ljava/lang/String;
    goto :goto_0

    .line 137
    :catch_0
    move-exception v3

    .line 140
    sget-object v3, Lcom/parrot/freeflight/about/LegalMentionsActivity;->DEFAULT_URL:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 45
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v9, 0x7f04002c

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->setContentView(I)V

    .line 47
    const v9, 0x7f0f0117

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/parrot/freeflight/about/LegalMentionsActivity;->mRootView:Landroid/view/View;

    .line 48
    new-instance v9, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-direct {v9, p0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/parrot/freeflight/about/LegalMentionsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 49
    iget-object v9, p0, Lcom/parrot/freeflight/about/LegalMentionsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v10, Lcom/parrot/freeflight/about/LegalMentionsActivity$1;

    invoke-direct {v10, p0}, Lcom/parrot/freeflight/about/LegalMentionsActivity$1;-><init>(Lcom/parrot/freeflight/about/LegalMentionsActivity;)V

    invoke-virtual {v9, v10}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 55
    invoke-virtual {p0}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 56
    .local v4, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    .line 57
    .local v5, "isFromSplashScreen":Z
    if-eqz v4, :cond_0

    .line 58
    const-string v9, "is_from_splash_screen"

    invoke-virtual {v4, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 60
    :cond_0
    const v9, 0x7f0f011b

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    .local v0, "acceptButton":Landroid/widget/TextView;
    const v9, 0x7f0f011a

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 63
    .local v6, "refuseButton":Landroid/widget/TextView;
    if-eqz v5, :cond_1

    .line 66
    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 67
    new-instance v9, Lcom/parrot/freeflight/about/LegalMentionsActivity$2;

    invoke-direct {v9, p0}, Lcom/parrot/freeflight/about/LegalMentionsActivity$2;-><init>(Lcom/parrot/freeflight/about/LegalMentionsActivity;)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-static {p0, v6}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 81
    new-instance v9, Lcom/parrot/freeflight/about/LegalMentionsActivity$3;

    invoke-direct {v9, p0}, Lcom/parrot/freeflight/about/LegalMentionsActivity$3;-><init>(Lcom/parrot/freeflight/about/LegalMentionsActivity;)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :goto_0
    const v9, 0x7f0f011c

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/webkit/WebView;

    .line 107
    .local v8, "webview":Landroid/webkit/WebView;
    invoke-direct {p0}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v8, v11}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 109
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/parrot/freeflight/core/CoreManager;->getBitmapCache()Lcom/parrot/freeflight/core/BitmapCache;

    move-result-object v3

    .line 110
    .local v3, "bitmapCache":Lcom/parrot/freeflight/core/BitmapCache;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 111
    .local v7, "size":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 112
    const v9, 0x7f020226

    iget v10, v7, Landroid/graphics/Point;->x:I

    iget v11, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v9, v10, v11}, Lcom/parrot/freeflight/core/BitmapCache;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 114
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/parrot/freeflight/about/LegalMentionsActivity;->mRootView:Landroid/view/View;

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {v10, v11, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 115
    return-void

    .line 90
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "bitmapCache":Lcom/parrot/freeflight/core/BitmapCache;
    .end local v7    # "size":Landroid/graphics/Point;
    .end local v8    # "webview":Landroid/webkit/WebView;
    :cond_1
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    const v9, 0x7f0f0119

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 95
    .local v1, "backButton":Landroid/widget/ImageButton;
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual {v1, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 97
    new-instance v9, Lcom/parrot/freeflight/about/LegalMentionsActivity$4;

    invoke-direct {v9, p0}, Lcom/parrot/freeflight/about/LegalMentionsActivity$4;-><init>(Lcom/parrot/freeflight/about/LegalMentionsActivity;)V

    invoke-virtual {v1, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onDestroy()V

    .line 150
    iget-object v0, p0, Lcom/parrot/freeflight/about/LegalMentionsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 151
    iget-object v0, p0, Lcom/parrot/freeflight/about/LegalMentionsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 152
    return-void
.end method
