.class public Lcom/parrot/freeflight/academy/MyFlightsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MyFlightsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/academy/MyFlightsAdapter$OnDeleteListener;,
        Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/parrot/arsdk/aracademy/ARAcademyRun;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDateInstanceFormat:Ljava/text/DateFormat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDeleteListener:Lcom/parrot/freeflight/academy/MyFlightsAdapter$OnDeleteListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFlightDateFormat:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMinuteSecondFormat:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSecondFormat:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTimeInstanceFormat:Ljava/text/DateFormat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/academy/MyFlightsAdapter$OnDeleteListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/academy/MyFlightsAdapter$OnDeleteListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->mFlightDateFormat:Ljava/text/SimpleDateFormat;

    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->mDateInstanceFormat:Ljava/text/DateFormat;

    .line 42
    const/4 v0, 0x3

    .line 43
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->mTimeInstanceFormat:Ljava/text/DateFormat;

    .line 45
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "m \'m\' s \'s\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->mMinuteSecondFormat:Ljava/text/SimpleDateFormat;

    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "s \'s\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->mSecondFormat:Ljava/text/SimpleDateFormat;

    .line 59
    iput-object p2, p0, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->mDeleteListener:Lcom/parrot/freeflight/academy/MyFlightsAdapter$OnDeleteListener;

    .line 60
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getMediaManager()Lcom/parrot/freeflight/core/academy/MediaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    .line 61
    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/academy/MyFlightsAdapter;)Lcom/parrot/freeflight/academy/MyFlightsAdapter$OnDeleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsAdapter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->mDeleteListener:Lcom/parrot/freeflight/academy/MyFlightsAdapter$OnDeleteListener;

    return-object v0
.end method

.method private shouldHideDisplayRatingBar(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z
    .locals 1
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 185
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
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 32
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 66
    if-nez p2, :cond_0

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v28

    const v29, 0x7f040090

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, p3

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 69
    const v28, 0x7f0f026e

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 70
    .local v5, "deleteButton":Landroid/widget/Button;
    const v28, 0x7f0f0270

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    .line 71
    .local v23, "iconPilotingTypeImageView":Landroid/widget/ImageView;
    const v28, 0x7f0f0273

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 72
    .local v13, "flightDateTextView":Landroid/widget/TextView;
    const v28, 0x7f0f0274

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 73
    .local v19, "flightTimeTextView":Landroid/widget/TextView;
    const v28, 0x7f0f0275

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 74
    .local v15, "flightDurationImageView":Landroid/widget/ImageView;
    const v28, 0x7f0f0276

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 75
    .local v16, "flightDurationTextView":Landroid/widget/TextView;
    const v28, 0x7f0f0277

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 76
    .local v10, "flightCrashesImageView":Landroid/widget/ImageView;
    const v28, 0x7f0f0278

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 77
    .local v11, "flightCrashesTextView":Landroid/widget/TextView;
    const v28, 0x7f0f0279

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 78
    .local v8, "flightCapturesImageView":Landroid/widget/ImageView;
    const v28, 0x7f0f027a

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 79
    .local v9, "flightCapturesTextView":Landroid/widget/TextView;
    const v28, 0x7f0f027b

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 80
    .local v20, "flightVideosImageView":Landroid/widget/ImageView;
    const v28, 0x7f0f027c

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 81
    .local v21, "flightVideosTextView":Landroid/widget/TextView;
    const v28, 0x7f0f027d

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 82
    .local v17, "flightGpsImageView":Landroid/widget/ImageView;
    const v28, 0x7f0f0261

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RatingBar;

    .line 83
    .local v18, "flightRatingBar":Landroid/widget/RatingBar;
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->getContext()Landroid/content/Context;

    move-result-object v28

    const v29, 0x7f0e00ec

    invoke-static/range {v28 .. v29}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v28

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintRatingBar(Landroid/widget/RatingBar;I)V

    .line 85
    new-instance v22, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;-><init>(Lcom/parrot/freeflight/academy/MyFlightsAdapter$1;)V

    .line 87
    .local v22, "holder":Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;
    move-object/from16 v0, v22

    iput-object v5, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->deleteButton:Landroid/widget/Button;

    .line 88
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->iconPilotingTypeImageView:Landroid/widget/ImageView;

    .line 89
    move-object/from16 v0, v22

    iput-object v13, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightDateTextView:Landroid/widget/TextView;

    .line 90
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightTimeTextView:Landroid/widget/TextView;

    .line 91
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightDurationTextView:Landroid/widget/TextView;

    .line 92
    move-object/from16 v0, v22

    iput-object v11, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightCrashesTextView:Landroid/widget/TextView;

    .line 93
    move-object/from16 v0, v22

    iput-object v9, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightCapturesTextView:Landroid/widget/TextView;

    .line 94
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightVideosTextView:Landroid/widget/TextView;

    .line 95
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightGpsImageView:Landroid/widget/ImageView;

    .line 96
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightRatingBar:Landroid/widget/RatingBar;

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->deleteButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightDateTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightTimeTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightDurationTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightCrashesTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightCapturesTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightVideosTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual {v15}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v29

    const v30, 0x7f0e0006

    invoke-static/range {v28 .. v30}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v29

    const v30, 0x7f0e0006

    invoke-static/range {v28 .. v30}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v29

    const v30, 0x7f0e0006

    invoke-static/range {v28 .. v30}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v29

    const v30, 0x7f0e0006

    invoke-static/range {v28 .. v30}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v29

    const v30, 0x7f0e0006

    invoke-static/range {v28 .. v30}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    new-instance v28, Lcom/parrot/freeflight/academy/MyFlightsAdapter$1;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/academy/MyFlightsAdapter$1;-><init>(Lcom/parrot/freeflight/academy/MyFlightsAdapter;I)V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 122
    .end local v5    # "deleteButton":Landroid/widget/Button;
    .end local v8    # "flightCapturesImageView":Landroid/widget/ImageView;
    .end local v9    # "flightCapturesTextView":Landroid/widget/TextView;
    .end local v10    # "flightCrashesImageView":Landroid/widget/ImageView;
    .end local v11    # "flightCrashesTextView":Landroid/widget/TextView;
    .end local v13    # "flightDateTextView":Landroid/widget/TextView;
    .end local v15    # "flightDurationImageView":Landroid/widget/ImageView;
    .end local v16    # "flightDurationTextView":Landroid/widget/TextView;
    .end local v17    # "flightGpsImageView":Landroid/widget/ImageView;
    .end local v18    # "flightRatingBar":Landroid/widget/RatingBar;
    .end local v19    # "flightTimeTextView":Landroid/widget/TextView;
    .end local v20    # "flightVideosImageView":Landroid/widget/ImageView;
    .end local v21    # "flightVideosTextView":Landroid/widget/TextView;
    .end local v22    # "holder":Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;
    .end local v23    # "iconPilotingTypeImageView":Landroid/widget/ImageView;
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    .line 123
    .local v24, "item":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;

    .line 126
    .restart local v22    # "holder":Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->mFlightDateFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v28, v0

    invoke-virtual/range {v24 .. v24}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getDate()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    .line 127
    .local v12, "flightDate":Ljava/util/Date;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightDateTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->mDateInstanceFormat:Ljava/text/DateFormat;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightTimeTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->mTimeInstanceFormat:Ljava/text/DateFormat;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v12    # "flightDate":Ljava/util/Date;
    :goto_0
    invoke-virtual/range {v24 .. v24}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getTotalRunTime()I

    move-result v14

    .line 137
    .local v14, "flightDuration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->mMinuteSecondFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v28, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, "durationString":Ljava/lang/String;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightDurationTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightCrashesTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v24 .. v24}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getCrash()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->getContext()Landroid/content/Context;

    move-result-object v28

    const-string v29, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static/range {v28 .. v29}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v28

    if-nez v28, :cond_1

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v24 .. v24}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUuid()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v24 .. v24}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getCaptures()Ljava/util/List;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lcom/parrot/freeflight/core/academy/MediaManager;->getNumberOfCaptures(Ljava/lang/String;Ljava/util/List;)I

    move-result v4

    .line 142
    .local v4, "captureNumber":I
    if-gez v4, :cond_2

    .line 143
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightCapturesTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const v29, 0x7f0806ae

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(I)V

    .line 148
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v24 .. v24}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUuid()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v24 .. v24}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getVideos()Ljava/util/List;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lcom/parrot/freeflight/core/academy/MediaManager;->getNumberOfVideos(Ljava/lang/String;Ljava/util/List;)I

    move-result v27

    .line 149
    .local v27, "videoNumber":I
    if-gez v27, :cond_3

    .line 150
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightVideosTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const v29, 0x7f0806ae

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(I)V

    .line 156
    .end local v4    # "captureNumber":I
    .end local v27    # "videoNumber":I
    :cond_1
    :goto_2
    invoke-virtual/range {v24 .. v24}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getProductId()I

    move-result v28

    invoke-static/range {v28 .. v28}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v25

    .line 159
    .local v25, "productType":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    sget-object v28, Lcom/parrot/freeflight/academy/MyFlightsAdapter$2;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual/range {v25 .. v25}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v29

    aget v28, v28, v29

    packed-switch v28, :pswitch_data_0

    .line 166
    invoke-static/range {v25 .. v25}, Lcom/parrot/freeflight/home/connection/DroneImageSelector;->getMyFlightsImageId(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v26

    .line 169
    .local v26, "productTypeResource":I
    :goto_3
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->iconPilotingTypeImageView:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->iconPilotingTypeImageView:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->iconPilotingTypeImageView:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    const v31, 0x7f0e00ec

    invoke-static/range {v29 .. v31}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightGpsImageView:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-virtual/range {v24 .. v24}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGpsAvailable()Z

    move-result v28

    if-eqz v28, :cond_4

    const/16 v28, 0x0

    :goto_4
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->shouldHideDisplayRatingBar(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v28

    if-nez v28, :cond_5

    .line 175
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightRatingBar:Landroid/widget/RatingBar;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 176
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightRatingBar:Landroid/widget/RatingBar;

    move-object/from16 v28, v0

    invoke-virtual/range {v24 .. v24}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGrade()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/RatingBar;->setRating(F)V

    .line 181
    :goto_5
    return-object p2

    .line 129
    .end local v6    # "durationString":Ljava/lang/String;
    .end local v14    # "flightDuration":I
    .end local v25    # "productType":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .end local v26    # "productTypeResource":I
    :catch_0
    move-exception v7

    .line 130
    .local v7, "e":Ljava/text/ParseException;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightDateTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const v29, 0x7f08036c

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(I)V

    .line 131
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightTimeTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const v29, 0x7f08036c

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(I)V

    .line 132
    invoke-virtual {v7}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_0

    .line 145
    .end local v7    # "e":Ljava/text/ParseException;
    .restart local v4    # "captureNumber":I
    .restart local v6    # "durationString":Ljava/lang/String;
    .restart local v14    # "flightDuration":I
    :cond_2
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightCapturesTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 152
    .restart local v27    # "videoNumber":I
    :cond_3
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightVideosTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 163
    .end local v4    # "captureNumber":I
    .end local v27    # "videoNumber":I
    .restart local v25    # "productType":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :pswitch_0
    const v26, 0x7f02021b

    .line 164
    .restart local v26    # "productTypeResource":I
    goto/16 :goto_3

    .line 172
    :cond_4
    const/16 v28, 0x8

    goto :goto_4

    .line 178
    :cond_5
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;->flightRatingBar:Landroid/widget/RatingBar;

    move-object/from16 v28, v0

    const/16 v29, 0x4

    invoke-virtual/range {v28 .. v29}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_5

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
