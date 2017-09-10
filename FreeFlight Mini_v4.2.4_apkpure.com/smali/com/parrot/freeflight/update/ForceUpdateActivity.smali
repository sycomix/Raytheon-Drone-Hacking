.class public Lcom/parrot/freeflight/update/ForceUpdateActivity;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "ForceUpdateActivity.java"


# static fields
.field private static final KEY_EXTRA_PRODUCT:Ljava/lang/String; = "KEY_EXTRA_PRODUCT"

.field private static final PARROT_SUPPORT_URL:Ljava/lang/String; = "http://www.parrot.com/support"

.field private static final TAG:Ljava/lang/String; = "ForceUpdateActivity"

.field private static final UPDATE_REQUEST_CODE:I = 0x64


# instance fields
.field private mAutoLaunchManager:Lcom/parrot/freeflight/core/AutoLaunchManager;

.field private mForceUpdateImageView:Landroid/widget/ImageView;

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mRootView:Landroid/view/View;

.field private mUpdateNeededTextView:Landroid/widget/TextView;

.field private mUpdateOkButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/update/ForceUpdateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/ForceUpdateActivity;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/parrot/freeflight/update/ForceUpdateActivity;->applyUiTheme()V

    return-void
.end method

.method private applyUiTheme()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/update/ForceUpdateActivity;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/update/ForceUpdateActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/update/ForceUpdateActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v1, p0, Lcom/parrot/freeflight/update/ForceUpdateActivity;->mUpdateOkButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/Button;)V

    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/update/ForceUpdateActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v1, p0, Lcom/parrot/freeflight/update/ForceUpdateActivity;->mUpdateNeededTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/TextView;)V

    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/update/ForceUpdateActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v1, p0, Lcom/parrot/freeflight/update/ForceUpdateActivity;->mForceUpdateImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->applyToDrawable(Landroid/widget/ImageView;)V

    .line 111
    return-void
.end method

.method public static getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/update/ForceUpdateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_EXTRA_PRODUCT"

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    return-object v0
.end method

.method private updateMessage(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V
    .locals 5
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 88
    const v2, 0x7f0f00ee

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/update/ForceUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 90
    .local v1, "updateMessageTextView":Landroid/widget/TextView;
    sget-object v2, Lcom/parrot/freeflight/update/ForceUpdateActivity$3;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_FAMILY_ENUM:[I

    invoke-static {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFamily(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 101
    const v2, 0x7f0800e5

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/update/ForceUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_0
    return-void

    .line 92
    :pswitch_0
    const v2, 0x7f0800e8

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/update/ForceUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "updateMessage":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "http://www.parrot.com/support"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    .end local v0    # "updateMessage":Ljava/lang/String;
    :pswitch_1
    const v2, 0x7f0800e7

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/update/ForceUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 77
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/ForceUpdateActivity;->finish()V

    .line 80
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v2, 0x7f040028

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/update/ForceUpdateActivity;->setContentView(I)V

    .line 43
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/CoreManager;->getAutoLaunchManager()Lcom/parrot/freeflight/core/AutoLaunchManager;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/ForceUpdateActivity;->mAutoLaunchManager:Lcom/parrot/freeflight/core/AutoLaunchManager;

    .line 45
    const v2, 0x7f0f00eb

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/update/ForceUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/ForceUpdateActivity;->mRootView:Landroid/view/View;

    .line 47
    const v2, 0x7f0f00ef

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/update/ForceUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/parrot/freeflight/update/ForceUpdateActivity;->mUpdateOkButton:Landroid/widget/Button;

    .line 48
    iget-object v2, p0, Lcom/parrot/freeflight/update/ForceUpdateActivity;->mUpdateOkButton:Landroid/widget/Button;

    new-instance v3, Lcom/parrot/freeflight/update/ForceUpdateActivity$1;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/ForceUpdateActivity$1;-><init>(Lcom/parrot/freeflight/update/ForceUpdateActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v2, 0x7f0f00ed

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/update/ForceUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/update/ForceUpdateActivity;->mUpdateNeededTextView:Landroid/widget/TextView;

    .line 56
    const v2, 0x7f0f00ec

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/update/ForceUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/parrot/freeflight/update/ForceUpdateActivity;->mForceUpdateImageView:Landroid/widget/ImageView;

    .line 58
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/ForceUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, "callingIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 60
    const-string v2, "KEY_EXTRA_PRODUCT"

    sget-object v3, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->eARDISCOVERY_PRODUCT_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v3}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 61
    .local v1, "product":I
    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/update/ForceUpdateActivity;->updateMessage(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 64
    .end local v1    # "product":I
    :cond_0
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/parrot/freeflight/update/ForceUpdateActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 65
    iget-object v2, p0, Lcom/parrot/freeflight/update/ForceUpdateActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v3, Lcom/parrot/freeflight/update/ForceUpdateActivity$2;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/ForceUpdateActivity$2;-><init>(Lcom/parrot/freeflight/update/ForceUpdateActivity;)V

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 72
    iget-object v2, p0, Lcom/parrot/freeflight/update/ForceUpdateActivity;->mRootView:Landroid/view/View;

    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 73
    return-void
.end method
