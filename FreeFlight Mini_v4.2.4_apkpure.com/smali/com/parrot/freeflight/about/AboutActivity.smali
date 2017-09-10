.class public Lcom/parrot/freeflight/about/AboutActivity;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "AboutActivity.java"


# static fields
.field private static final MACGYVER_SHARED_PREF_KEY:Ljava/lang/String; = "MacgyverShareDataKey"

.field private static final MACGYVER_SHARED_PREF_NAME:Ljava/lang/String; = "MacgyverSharedPref"


# instance fields
.field private mLegalMentionsButton:Landroid/widget/Button;

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mRootView:Landroid/view/View;

.field private mShareDataNoCheckbox:Landroid/widget/RadioButton;

.field private mShareDataYesCheckbox:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/about/AboutActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/about/AboutActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/parrot/freeflight/about/AboutActivity;->applyUiTheme()V

    return-void
.end method

.method private applyUiTheme()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/parrot/freeflight/about/AboutActivity;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/about/AboutActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight/about/AboutActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v1, p0, Lcom/parrot/freeflight/about/AboutActivity;->mShareDataYesCheckbox:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/RadioButton;)V

    .line 113
    iget-object v0, p0, Lcom/parrot/freeflight/about/AboutActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v1, p0, Lcom/parrot/freeflight/about/AboutActivity;->mShareDataNoCheckbox:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/RadioButton;)V

    .line 114
    iget-object v0, p0, Lcom/parrot/freeflight/about/AboutActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v1, p0, Lcom/parrot/freeflight/about/AboutActivity;->mLegalMentionsButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/Button;)V

    .line 115
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f0f008c

    const v8, 0x7f0f008b

    .line 36
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const-string v6, "MacgyverSharedPref"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/parrot/freeflight/about/AboutActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 39
    .local v1, "mcgyverSharedPreferences":Landroid/content/SharedPreferences;
    const v6, 0x7f04001a

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/about/AboutActivity;->setContentView(I)V

    .line 41
    const v6, 0x7f0f0084

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/about/AboutActivity;->mRootView:Landroid/view/View;

    .line 42
    const v6, 0x7f0f0085

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 43
    .local v0, "backButton":Landroid/widget/ImageButton;
    const v6, 0x7f0f0086

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 44
    .local v4, "titleTextView":Landroid/widget/TextView;
    const v6, 0x7f0f0087

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 45
    .local v5, "versionTextView":Landroid/widget/TextView;
    const v6, 0x7f0f0088

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/parrot/freeflight/about/AboutActivity;->mLegalMentionsButton:Landroid/widget/Button;

    .line 46
    const v6, 0x7f0f0089

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 47
    .local v3, "shareDataTitleTextView":Landroid/widget/TextView;
    const v6, 0x7f0f008a

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 48
    .local v2, "shareDataRadioGroup":Landroid/widget/RadioGroup;
    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/parrot/freeflight/about/AboutActivity;->mShareDataYesCheckbox:Landroid/widget/RadioButton;

    .line 49
    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/about/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/parrot/freeflight/about/AboutActivity;->mShareDataNoCheckbox:Landroid/widget/RadioButton;

    .line 51
    new-instance v6, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/parrot/freeflight/about/AboutActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 52
    iget-object v6, p0, Lcom/parrot/freeflight/about/AboutActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v7, Lcom/parrot/freeflight/about/AboutActivity$1;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/about/AboutActivity$1;-><init>(Lcom/parrot/freeflight/about/AboutActivity;)V

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 59
    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 60
    invoke-static {p0, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 61
    iget-object v6, p0, Lcom/parrot/freeflight/about/AboutActivity;->mLegalMentionsButton:Landroid/widget/Button;

    invoke-static {p0, v6}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 62
    invoke-static {p0, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 63
    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 65
    new-instance v6, Lcom/parrot/freeflight/about/AboutActivity$2;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/about/AboutActivity$2;-><init>(Lcom/parrot/freeflight/about/AboutActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v6, p0, Lcom/parrot/freeflight/about/AboutActivity;->mLegalMentionsButton:Landroid/widget/Button;

    new-instance v7, Lcom/parrot/freeflight/about/AboutActivity$3;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/about/AboutActivity$3;-><init>(Lcom/parrot/freeflight/about/AboutActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance v6, Lcom/parrot/freeflight/about/AboutActivity$4;

    invoke-direct {v6, p0, v1}, Lcom/parrot/freeflight/about/AboutActivity$4;-><init>(Lcom/parrot/freeflight/about/AboutActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v6}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 103
    const-string v6, "MacgyverShareDataKey"

    const/4 v7, 0x1

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 104
    invoke-virtual {v2, v9}, Landroid/widget/RadioGroup;->check(I)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {v2, v8}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onDestroy()V

    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/about/AboutActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 121
    iget-object v0, p0, Lcom/parrot/freeflight/about/AboutActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 122
    return-void
.end method
