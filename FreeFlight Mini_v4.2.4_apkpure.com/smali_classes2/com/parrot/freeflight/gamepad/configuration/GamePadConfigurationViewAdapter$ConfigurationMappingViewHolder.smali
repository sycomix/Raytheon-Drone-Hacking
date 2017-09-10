.class public Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GamePadConfigurationViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ConfigurationMappingViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder$InputClickListener;
    }
.end annotation


# static fields
.field private static final MAX_INPUT_PER_ROW:I = 0x4


# instance fields
.field private final mAssociatedButtonsLayout:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCommandNameTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCommands:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/command/Command;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGamePadActionLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mHashMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/parrot/freeflight/gamepad/command/Command;",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputChoiceListLayout:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mInputClickListener:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder$InputClickListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mResourceDescriptor:Lcom/parrot/freeflight/gamepad/GamePad$InputResourceProvider;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Ljava/util/List;Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder$InputClickListener;Ljava/util/Map;Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "inputClickListener"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder$InputClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "itemDimensions"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/command/Command;",
            ">;",
            "Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder$InputClickListener;",
            "Ljava/util/Map",
            "<",
            "Lcom/parrot/freeflight/gamepad/command/Command;",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            ">;",
            "Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/command/Command;>;"
    .local p5, "hashMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/parrot/freeflight/gamepad/command/Command;Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    const/4 v0, 0x1

    .line 290
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 291
    iput-object p5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mHashMap:Ljava/util/Map;

    .line 292
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 293
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 294
    iput-object p2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mContext:Landroid/content/Context;

    .line 295
    iput-object p3, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mCommands:Ljava/util/List;

    .line 296
    iput-object p6, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;

    .line 297
    iput-object p4, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mInputClickListener:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder$InputClickListener;

    .line 298
    const v0, 0x7f0f020d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mGamePadActionLayout:Landroid/view/View;

    .line 299
    const v0, 0x7f0f0210

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mInputChoiceListLayout:Landroid/widget/LinearLayout;

    .line 300
    const v0, 0x7f0f020e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mCommandNameTextView:Landroid/widget/TextView;

    .line 301
    const v0, 0x7f0f020f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mAssociatedButtonsLayout:Landroid/widget/LinearLayout;

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mCommandNameTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 304
    return-void
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;)Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder$InputClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mInputClickListener:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder$InputClickListener;

    return-object v0
.end method

.method private createInputDirectionImageView(I)Landroid/widget/ImageView;
    .locals 6
    .param p1, "direction"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 432
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 433
    .local v1, "directionImageView":Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 435
    .local v2, "params":Landroid/widget/TableRow$LayoutParams;
    const/4 v0, -0x1

    .line 437
    .local v0, "directionDrawableId":I
    packed-switch p1, :pswitch_data_0

    .line 468
    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 469
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/TableRow$LayoutParams;->gravity:I

    .line 470
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 472
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;

    iget v3, v3, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->controlPadding:I

    invoke-virtual {v1, v4, v4, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 474
    :cond_0
    return-object v1

    .line 439
    :pswitch_0
    const v0, 0x7f020179

    .line 440
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;

    iget v3, v3, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->directionVerticalWidth:I

    iput v3, v2, Landroid/widget/TableRow$LayoutParams;->width:I

    goto :goto_0

    .line 443
    :pswitch_1
    const v0, 0x7f02017d

    .line 444
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;

    iget v3, v3, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->directionVerticalWidth:I

    iput v3, v2, Landroid/widget/TableRow$LayoutParams;->width:I

    goto :goto_0

    .line 447
    :pswitch_2
    const v0, 0x7f02017e

    .line 448
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;

    iget v3, v3, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->directionVerticalWidth:I

    iput v3, v2, Landroid/widget/TableRow$LayoutParams;->width:I

    goto :goto_0

    .line 451
    :pswitch_3
    const v0, 0x7f02017c

    .line 452
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;

    iget v3, v3, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->directionHorizontalWidth:I

    iput v3, v2, Landroid/widget/TableRow$LayoutParams;->width:I

    goto :goto_0

    .line 455
    :pswitch_4
    const v0, 0x7f02017b

    .line 456
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;

    iget v3, v3, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->directionHorizontalWidth:I

    iput v3, v2, Landroid/widget/TableRow$LayoutParams;->width:I

    goto :goto_0

    .line 459
    :pswitch_5
    const v0, 0x7f02017a

    .line 460
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;

    iget v3, v3, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->directionHorizontalWidth:I

    iput v3, v2, Landroid/widget/TableRow$LayoutParams;->width:I

    goto :goto_0

    .line 437
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method private createInputLayout()Landroid/widget/LinearLayout;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, -0x2

    .line 412
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 413
    .local v0, "inputLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 414
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 415
    .local v1, "inputLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    const v2, 0x7f020177

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 417
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;

    iget v2, v2, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->controlRowMargin:I

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;

    iget v3, v3, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->controlRowMargin:I

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;

    iget v4, v4, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->controlRowMargin:I

    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;

    iget v5, v5, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->controlRowMargin:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 418
    return-object v0
.end method

.method private createInputView(ZLjava/lang/String;Z)Landroid/view/View;
    .locals 9
    .param p1, "isASeparator"    # Z
    .param p2, "controlName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "isControlAButton"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/16 v7, 0x11

    const/4 v6, -0x2

    .line 481
    const/4 v0, 0x0

    .line 482
    .local v0, "buttonResId":I
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mResourceDescriptor:Lcom/parrot/freeflight/gamepad/GamePad$InputResourceProvider;

    if-eqz v5, :cond_0

    if-eqz p2, :cond_0

    .line 483
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mResourceDescriptor:Lcom/parrot/freeflight/gamepad/GamePad$InputResourceProvider;

    invoke-interface {v5, p2}, Lcom/parrot/freeflight/gamepad/GamePad$InputResourceProvider;->getResourceForButton(Ljava/lang/String;)I

    move-result v0

    .line 486
    :cond_0
    new-instance v4, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 487
    .local v4, "params":Landroid/widget/TableRow$LayoutParams;
    iput v7, v4, Landroid/widget/TableRow$LayoutParams;->gravity:I

    .line 488
    if-nez v0, :cond_4

    .line 489
    new-instance v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 490
    .local v1, "controlTextView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mContext:Landroid/content/Context;

    const v6, 0x7f0e0063

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 491
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 492
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 494
    if-eqz p1, :cond_1

    .line 495
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;

    iget v5, v5, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->separatorWidth:I

    iput v5, v4, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 496
    const-string v5, "+"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;

    iget v6, v6, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->separatorTextSize:I

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 512
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    move-object v3, v1

    .line 520
    .end local v1    # "controlTextView":Landroid/widget/TextView;
    .local v3, "inputView":Landroid/view/View;
    :goto_1
    return-object v3

    .line 499
    .end local v3    # "inputView":Landroid/view/View;
    .restart local v1    # "controlTextView":Landroid/widget/TextView;
    :cond_1
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;

    iget v5, v5, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->controlMinWidth:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 500
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    if-eqz p3, :cond_2

    .line 502
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_3

    .line 503
    const v5, 0x7f0201b0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 508
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;

    iget v5, v5, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->controlPadding:I

    iget-object v6, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;

    iget v6, v6, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->controlPadding:I

    iget-object v7, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;

    iget v7, v7, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->controlPadding:I

    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;

    iget v8, v8, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->controlPadding:I

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 505
    :cond_3
    const v5, 0x7f0201af

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 515
    .end local v1    # "controlTextView":Landroid/widget/TextView;
    :cond_4
    new-instance v2, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 516
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 517
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    move-object v3, v2

    .restart local v3    # "inputView":Landroid/view/View;
    goto :goto_1
.end method

.method private createRowLayout()Landroid/widget/LinearLayout;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, -0x2

    .line 423
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 424
    .local v0, "rowLayout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 425
    .local v1, "rowLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 427
    return-object v0
.end method

.method private populateInputChoiceListLayout(Lcom/parrot/freeflight/gamepad/command/Command;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .param p1, "command"    # Lcom/parrot/freeflight/gamepad/command/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/gamepad/command/Command;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad$Input;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad$Input;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "buttonsInput":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad$Input;>;"
    .local p3, "joysticksInput":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad$Input;>;"
    const/4 v6, 0x0

    .line 376
    invoke-interface {p1}, Lcom/parrot/freeflight/gamepad/command/Command;->isAnalog()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v4, p3

    .line 378
    .local v4, "possibleInputs":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad$Input;>;"
    :goto_0
    iget-object v7, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mInputChoiceListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 379
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->createRowLayout()Landroid/widget/LinearLayout;

    move-result-object v5

    .line 380
    .local v5, "rowLayout":Landroid/widget/LinearLayout;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 381
    .local v0, "input":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    iget v8, v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-nez v8, :cond_3

    const/4 v3, 0x1

    .line 382
    .local v3, "isInputAButton":Z
    :goto_2
    iget-object v8, v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    invoke-direct {p0, v6, v8, v3}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->createInputView(ZLjava/lang/String;Z)Landroid/view/View;

    move-result-object v2

    .line 383
    .local v2, "inputView":Landroid/view/View;
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->createInputLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 385
    .local v1, "inputLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 386
    if-nez v3, :cond_1

    instance-of v8, v2, Landroid/widget/TextView;

    if-eqz v8, :cond_1

    .line 387
    iget v8, v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    invoke-direct {p0, v8}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->createInputDirectionImageView(I)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 389
    :cond_1
    new-instance v8, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder$1;

    invoke-direct {v8, p0, v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder$1;-><init>(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;Lcom/parrot/freeflight/gamepad/GamePad$Input;)V

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 398
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    const/4 v9, 0x4

    if-lt v8, v9, :cond_0

    .line 399
    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mInputChoiceListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 400
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->createRowLayout()Landroid/widget/LinearLayout;

    move-result-object v5

    goto :goto_1

    .end local v0    # "input":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v1    # "inputLayout":Landroid/widget/LinearLayout;
    .end local v2    # "inputView":Landroid/view/View;
    .end local v3    # "isInputAButton":Z
    .end local v4    # "possibleInputs":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad$Input;>;"
    .end local v5    # "rowLayout":Landroid/widget/LinearLayout;
    :cond_2
    move-object v4, p2

    .line 376
    goto :goto_0

    .restart local v0    # "input":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .restart local v4    # "possibleInputs":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad$Input;>;"
    .restart local v5    # "rowLayout":Landroid/widget/LinearLayout;
    :cond_3
    move v3, v6

    .line 381
    goto :goto_2

    .line 404
    .end local v0    # "input":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :cond_4
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-lez v6, :cond_5

    .line 405
    iget-object v6, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mInputChoiceListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 408
    :cond_5
    return-void
.end method


# virtual methods
.method public displayInputList(Z)V
    .locals 2
    .param p1, "shouldDisplay"    # Z

    .prologue
    .line 366
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mInputChoiceListLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 367
    return-void

    .line 366
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setActionLayoutBackground(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1
    .param p1, "backgroundAnimationDrawable"    # Landroid/graphics/drawable/AnimationDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 370
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mGamePadActionLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 371
    return-void
.end method

.method public updateView(ILjava/util/List;Ljava/util/List;ZLcom/parrot/freeflight/gamepad/GamePad$InputResourceProvider;)V
    .locals 17
    .param p1, "position"    # I
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "shouldDisplayInputList"    # Z
    .param p5, "resourceDescriptor"    # Lcom/parrot/freeflight/gamepad/GamePad$InputResourceProvider;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad$Input;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad$Input;",
            ">;Z",
            "Lcom/parrot/freeflight/gamepad/GamePad$InputResourceProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 310
    .local p2, "buttonsInput":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad$Input;>;"
    .local p3, "joysticksInput":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad$Input;>;"
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mResourceDescriptor:Lcom/parrot/freeflight/gamepad/GamePad$InputResourceProvider;

    .line 311
    rem-int/lit8 v14, p1, 0x2

    if-nez v14, :cond_5

    .line 312
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mGamePadActionLayout:Landroid/view/View;

    const v15, 0x7f020180

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 313
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mInputChoiceListLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mContext:Landroid/content/Context;

    const v16, 0x7f0e005f

    invoke-static/range {v15 .. v16}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 319
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mCommands:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/gamepad/command/Command;

    .line 320
    .local v4, "command":Lcom/parrot/freeflight/gamepad/command/Command;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mCommandNameTextView:Landroid/widget/TextView;

    invoke-interface {v4}, Lcom/parrot/freeflight/gamepad/command/Command;->getResId()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 323
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mAssociatedButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 324
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mHashMap:Ljava/util/Map;

    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .line 325
    .local v3, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    if-eqz v3, :cond_7

    .line 326
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v9, "inputs":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad$Input;>;"
    iget-object v14, v3, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->firstInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v14, v3, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    if-eqz v14, :cond_0

    iget-object v14, v3, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->secondInput:Lcom/parrot/freeflight/gamepad/GamePad$Input;

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .local v10, "length":I
    :goto_1
    if-ge v7, v10, :cond_7

    .line 330
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 331
    .local v5, "control":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    const/4 v15, 0x0

    iget-object v0, v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlName:Ljava/lang/String;

    move-object/from16 v16, v0

    iget v14, v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-nez v14, :cond_6

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v14}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->createInputView(ZLjava/lang/String;Z)Landroid/view/View;

    move-result-object v8

    .line 332
    .local v8, "inputView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mAssociatedButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 335
    iget v14, v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-eqz v14, :cond_1

    instance-of v14, v8, Landroid/widget/TextView;

    if-eqz v14, :cond_1

    .line 336
    iget v14, v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;->direction:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->createInputDirectionImageView(I)Landroid/widget/ImageView;

    move-result-object v6

    .line 337
    .local v6, "directionImageView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mAssociatedButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    .end local v6    # "directionImageView":Landroid/widget/ImageView;
    :cond_1
    add-int/lit8 v14, v7, 0x1

    if-ge v14, v10, :cond_4

    .line 342
    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->createInputView(ZLjava/lang/String;Z)Landroid/view/View;

    move-result-object v13

    .line 343
    .local v13, "separatorTextView":Landroid/view/View;
    const/4 v11, 0x0

    .line 344
    .local v11, "separatorLeftPadding":I
    const/4 v12, 0x0

    .line 345
    .local v12, "separatorRightPadding":I
    iget v14, v5, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-nez v14, :cond_2

    .line 346
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;

    iget v11, v14, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->controlPadding:I

    .line 348
    :cond_2
    add-int/lit8 v14, v7, 0x1

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    iget v14, v14, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-nez v14, :cond_3

    .line 349
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;

    iget v12, v14, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;->controlPadding:I

    .line 351
    :cond_3
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v11, v14, v12, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 352
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mAssociatedButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 329
    .end local v11    # "separatorLeftPadding":I
    .end local v12    # "separatorRightPadding":I
    .end local v13    # "separatorTextView":Landroid/view/View;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 315
    .end local v3    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .end local v4    # "command":Lcom/parrot/freeflight/gamepad/command/Command;
    .end local v5    # "control":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v7    # "i":I
    .end local v8    # "inputView":Landroid/view/View;
    .end local v9    # "inputs":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad$Input;>;"
    .end local v10    # "length":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mGamePadActionLayout:Landroid/view/View;

    const v15, 0x7f02017f

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 316
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mInputChoiceListLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->mContext:Landroid/content/Context;

    const v16, 0x7f0e005e

    invoke-static/range {v15 .. v16}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 331
    .restart local v3    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .restart local v4    # "command":Lcom/parrot/freeflight/gamepad/command/Command;
    .restart local v5    # "control":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .restart local v7    # "i":I
    .restart local v9    # "inputs":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad$Input;>;"
    .restart local v10    # "length":I
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 357
    .end local v5    # "control":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    .end local v7    # "i":I
    .end local v9    # "inputs":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad$Input;>;"
    .end local v10    # "length":I
    :cond_7
    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    .line 358
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v4, v1, v2}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->populateInputChoiceListLayout(Lcom/parrot/freeflight/gamepad/command/Command;Ljava/util/List;Ljava/util/List;)V

    .line 361
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->displayInputList(Z)V

    .line 363
    return-void
.end method
