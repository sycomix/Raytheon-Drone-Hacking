.class public Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;
.super Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;
.source "MyFlightsDetailsSummaryFragment.java"


# instance fields
.field private mBatteryTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCrashTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDeviceTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneTypeImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneTypeTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLocationTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRatingBar:Landroid/widget/RatingBar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRunTypePrivate:Landroid/widget/RadioButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRunTypePublic:Landroid/widget/RadioButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRunTypeRadioGroup:Landroid/widget/RadioGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mStatusBarLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTimeTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->applyUiTheme()V

    return-void
.end method

.method private applyFonts()V
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 226
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mLocationTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 227
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mTimeTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 228
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mDroneTypeTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 229
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mBatteryTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 230
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mCrashTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 231
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mDeviceTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 232
    return-void
.end method

.method private applyUiTheme()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mRunTypePublic:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/RadioButton;)V

    .line 220
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mRunTypePrivate:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/RadioButton;)V

    .line 221
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mStatusBarLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductTileColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 222
    return-void
.end method

.method private displayRunDetails()V
    .locals 15

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->getRunSummary()Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    move-result-object v5

    .line 144
    .local v5, "run":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->getRunDetails()Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    move-result-object v6

    .line 146
    .local v6, "runDetails":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    if-eqz v5, :cond_1

    .line 147
    iget-object v11, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mRunTypeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v5}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getVisible()Z

    move-result v10

    if-eqz v10, :cond_2

    const v10, 0x7f0f025f

    :goto_0
    invoke-virtual {v11, v10}, Landroid/widget/RadioGroup;->check(I)V

    .line 151
    invoke-virtual {v5}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getProductId()I

    move-result v10

    invoke-static {v10}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    .line 152
    .local v3, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    sget-object v10, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment$4;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {v3}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 175
    const v4, 0x7f02021a

    .line 179
    .local v4, "productTypeResource":I
    :goto_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 180
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 181
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v10, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mDroneTypeImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    invoke-virtual {v5}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGpsAvailable()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 184
    iget-object v10, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :goto_2
    invoke-direct {p0, v3}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->shouldHideDisplayRatingBar(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 190
    iget-object v10, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mRatingBar:Landroid/widget/RatingBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 191
    iget-object v10, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v5}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGrade()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/widget/RatingBar;->setRating(F)V

    .line 197
    :goto_3
    invoke-virtual {v5}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getTotalRunTime()I

    move-result v10

    div-int/lit16 v8, v10, 0x3e8

    .line 198
    .local v8, "totalRunTime":I
    div-int/lit8 v2, v8, 0x3c

    .line 199
    .local v2, "minRunTime":I
    rem-int/lit8 v7, v8, 0x3c

    .line 200
    .local v7, "secRunTime":I
    iget-object v10, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mTimeTextView:Landroid/widget/TextView;

    const v11, 0x7f080688

    invoke-virtual {p0, v11}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v10, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mDroneTypeTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getProductId()I

    move-result v11

    invoke-static {v11}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v11

    invoke-static {v11}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v10, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mCrashTextView:Landroid/widget/TextView;

    const v11, 0x7f080353

    invoke-virtual {p0, v11}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v5}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getCrash()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v10, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mDeviceTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getControllerModel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const/4 v9, 0x0

    .line 205
    .local v9, "usedBattery":I
    if-eqz v6, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->getBatteryUsed()I

    move-result v9

    .line 208
    :cond_0
    iget-object v10, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mBatteryTextView:Landroid/widget/TextView;

    const v11, 0x7f080351

    invoke-virtual {p0, v11}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "minRunTime":I
    .end local v3    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .end local v4    # "productTypeResource":I
    .end local v7    # "secRunTime":I
    .end local v8    # "totalRunTime":I
    .end local v9    # "usedBattery":I
    :cond_1
    return-void

    .line 147
    :cond_2
    const v10, 0x7f0f0260

    goto/16 :goto_0

    .line 154
    .restart local v3    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :pswitch_0
    const v4, 0x7f02021d

    .line 155
    .restart local v4    # "productTypeResource":I
    goto/16 :goto_1

    .line 157
    .end local v4    # "productTypeResource":I
    :pswitch_1
    const v4, 0x7f02021e

    .line 158
    .restart local v4    # "productTypeResource":I
    goto/16 :goto_1

    .line 166
    .end local v4    # "productTypeResource":I
    :pswitch_2
    const v4, 0x7f020219

    .line 167
    .restart local v4    # "productTypeResource":I
    goto/16 :goto_1

    .line 171
    .end local v4    # "productTypeResource":I
    :pswitch_3
    const v4, 0x7f02021b

    .line 172
    .restart local v4    # "productTypeResource":I
    goto/16 :goto_1

    .line 186
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v10, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mLocationTextView:Landroid/widget/TextView;

    const v11, 0x7f080356

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 193
    :cond_4
    iget-object v10, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mRatingBar:Landroid/widget/RatingBar;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto/16 :goto_3

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private shouldHideDisplayRatingBar(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z
    .locals 1
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 235
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_HYDROFOIL:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_BRICK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_EVO_LIGHT:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_DELOS3:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_WINGX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    const v7, 0x7f04008e

    const/4 v8, 0x0

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 64
    .local v5, "rootView":Landroid/view/View;
    const v7, 0x7f0f025d

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mStatusBarLayout:Landroid/view/View;

    .line 65
    const v7, 0x7f0f025e

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioGroup;

    iput-object v7, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mRunTypeRadioGroup:Landroid/widget/RadioGroup;

    .line 66
    const v7, 0x7f0f025f

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    iput-object v7, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mRunTypePublic:Landroid/widget/RadioButton;

    .line 67
    const v7, 0x7f0f0260

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    iput-object v7, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mRunTypePrivate:Landroid/widget/RadioButton;

    .line 68
    const v7, 0x7f0f0263

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mLocationTextView:Landroid/widget/TextView;

    .line 69
    const v7, 0x7f0f0265

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mTimeTextView:Landroid/widget/TextView;

    .line 70
    const v7, 0x7f0f0267

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mDroneTypeTextView:Landroid/widget/TextView;

    .line 71
    const v7, 0x7f0f0269

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mBatteryTextView:Landroid/widget/TextView;

    .line 72
    const v7, 0x7f0f026b

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mCrashTextView:Landroid/widget/TextView;

    .line 73
    const v7, 0x7f0f026d

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mDeviceTextView:Landroid/widget/TextView;

    .line 74
    const v7, 0x7f0f0261

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RatingBar;

    iput-object v7, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mRatingBar:Landroid/widget/RatingBar;

    .line 75
    const v7, 0x7f0f0262

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 76
    .local v4, "locationImageView":Landroid/widget/ImageView;
    const v7, 0x7f0f0264

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 77
    .local v6, "timeImageView":Landroid/widget/ImageView;
    const v7, 0x7f0f0266

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mDroneTypeImageView:Landroid/widget/ImageView;

    .line 78
    const v7, 0x7f0f0268

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 79
    .local v1, "batteryImageView":Landroid/widget/ImageView;
    const v7, 0x7f0f026a

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 80
    .local v2, "crashImageView":Landroid/widget/ImageView;
    const v7, 0x7f0f026c

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 82
    .local v3, "deviceImageView":Landroid/widget/ImageView;
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->applyFonts()V

    .line 84
    iget-object v7, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mRatingBar:Landroid/widget/RatingBar;

    new-instance v8, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment$1;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment$1;-><init>(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 96
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 98
    .local v0, "activity":Landroid/app/Activity;
    iget-object v7, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mRatingBar:Landroid/widget/RatingBar;

    const v8, 0x7f0e00f3

    invoke-static {v0, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintRatingBar(Landroid/widget/RatingBar;I)V

    .line 99
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v7, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mRunTypeRadioGroup:Landroid/widget/RadioGroup;

    new-instance v8, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment$2;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment$2;-><init>(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 123
    new-instance v7, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 124
    iget-object v7, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v8, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment$3;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment$3;-><init>(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;)V

    invoke-virtual {v7, v8}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 130
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mRunTypePrivate:Landroid/widget/RadioButton;

    invoke-static {v7, v8}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 131
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mRunTypePublic:Landroid/widget/RadioButton;

    invoke-static {v7, v8}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 132
    return-object v5
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->onDestroy()V

    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 216
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;->onResume()V

    .line 138
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->displayRunDetails()V

    .line 139
    return-void
.end method
