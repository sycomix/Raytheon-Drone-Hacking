.class Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$ViewHolder;
.super Ljava/lang/Object;
.source "MyFlightsDetailsMediasFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field thumbnailImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field thumbnailUploadedIndicator:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field thumbnailVideoIndicator:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$1;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$ViewHolder;-><init>()V

    return-void
.end method
