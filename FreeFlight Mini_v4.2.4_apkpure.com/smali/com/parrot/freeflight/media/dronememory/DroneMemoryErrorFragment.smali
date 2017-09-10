.class public Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;
.super Lcom/parrot/freeflight/media/dronememory/DroneMemoryBaseFragment;
.source "DroneMemoryErrorFragment.java"


# static fields
.field private static final ARG_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final ARG_END_ACTION:Ljava/lang/String; = "endAction"

.field private static final ARG_HAS_NEUTRAL_BUTTON:Ljava/lang/String; = "hasNeutralButton"

.field private static final ARG_IMAGE_ID:Ljava/lang/String; = "imageId"

.field private static final ARG_NEGATIVE_TEXT:Ljava/lang/String; = "negativeText"

.field private static final ARG_NEUTRAL_TEXT:Ljava/lang/String; = "neutralText"

.field private static final ARG_POSITIVE_TEXT:Ljava/lang/String; = "positiveText"

.field private static final ARG_STATUS:Ljava/lang/String; = "status"


# instance fields
.field private mNegativeButton:Landroid/widget/Button;

.field private mNeutralButton:Landroid/widget/Button;

.field private mPositiveButton:Landroid/widget/Button;

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mRootView:Landroid/view/View;

.field private mStatusImageView:Landroid/widget/ImageView;

.field private mStatusTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->applyUiTheme()V

    return-void
.end method

.method private applyUiTheme()V
    .locals 4

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0046

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 131
    .local v0, "redColor":I
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mStatusImageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 132
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/TextView;)V

    .line 133
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mNeutralButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 134
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mNeutralButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 135
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 136
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mPositiveButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 137
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 138
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 139
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 140
    return-void
.end method

.method public static newInstance(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;
    .locals 3
    .param p0, "hasNeutralButton"    # Z
    .param p1, "endAction"    # I
    .param p2, "statusImageId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "statusText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "descriptionText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "neutralText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "positiveText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "negativeText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 48
    new-instance v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;

    invoke-direct {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;-><init>()V

    .line 49
    .local v1, "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "endAction"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    const-string v2, "hasNeutralButton"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    const-string v2, "imageId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    const-string v2, "status"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v2, "description"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v2, "neutralText"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v2, "positiveText"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "negativeText"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 59
    return-object v1
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x2

    .line 65
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 66
    .local v1, "context":Landroid/content/Context;
    const v8, 0x7f040085

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mRootView:Landroid/view/View;

    .line 67
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0f0240

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mStatusImageView:Landroid/widget/ImageView;

    .line 68
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0f0185

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mStatusTextView:Landroid/widget/TextView;

    .line 69
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0f0241

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 70
    .local v2, "descriptionStatusTextView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0f0248

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mNeutralButton:Landroid/widget/Button;

    .line 71
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0f024a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mPositiveButton:Landroid/widget/Button;

    .line 72
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0f0249

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mNegativeButton:Landroid/widget/Button;

    .line 74
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, "args":Landroid/os/Bundle;
    const-string v8, "endAction"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 76
    .local v4, "endAction":I
    const-string v8, "hasNeutralButton"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 77
    .local v5, "hasNeutralButton":Z
    const-string v8, "imageId"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 78
    .local v6, "statusImageId":I
    const-string v8, "status"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, "statusText":Ljava/lang/String;
    const-string v8, "description"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "descriptionText":Ljava/lang/String;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mStatusImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    if-eqz v5, :cond_0

    .line 85
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mNeutralButton:Landroid/widget/Button;

    const-string v9, "neutralText"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 87
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    :goto_0
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mNeutralButton:Landroid/widget/Button;

    new-instance v9, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment$1;

    invoke-direct {v9, p0, v4}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment$1;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;I)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    new-instance v8, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-direct {v8, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 101
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v9, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment$2;

    invoke-direct {v9, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment$2;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;)V

    invoke-virtual {v8, v9}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 108
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0f00db

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 109
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mStatusTextView:Landroid/widget/TextView;

    invoke-static {v1, v8}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 110
    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 111
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mNeutralButton:Landroid/widget/Button;

    invoke-static {v1, v8, v10}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 112
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mPositiveButton:Landroid/widget/Button;

    invoke-static {v1, v8, v10}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 113
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mNegativeButton:Landroid/widget/Button;

    invoke-static {v1, v8, v10}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 114
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mRootView:Landroid/view/View;

    return-object v8

    .line 89
    :cond_0
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mPositiveButton:Landroid/widget/Button;

    const-string v9, "positiveText"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mNegativeButton:Landroid/widget/Button;

    const-string v9, "negativeText"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mNeutralButton:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryBaseFragment;->onDestroyView()V

    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 127
    return-void
.end method
