.class Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MyFlightsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/MyFlightsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public deleteButton:Landroid/widget/Button;

.field public flightCapturesTextView:Landroid/widget/TextView;

.field public flightCrashesTextView:Landroid/widget/TextView;

.field public flightDateTextView:Landroid/widget/TextView;

.field public flightDurationTextView:Landroid/widget/TextView;

.field public flightGpsImageView:Landroid/widget/ImageView;

.field public flightRatingBar:Landroid/widget/RatingBar;

.field public flightTimeTextView:Landroid/widget/TextView;

.field public flightVideosTextView:Landroid/widget/TextView;

.field public iconPilotingTypeImageView:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/academy/MyFlightsAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsAdapter$1;

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/MyFlightsAdapter$ViewHolder;-><init>()V

    return-void
.end method
