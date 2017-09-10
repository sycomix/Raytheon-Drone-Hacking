.class Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;
.super Ljava/lang/Object;
.source "MyFlightsDetailsGpsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MutableLatLng"
.end annotation


# instance fields
.field public latitude:D

.field public longitude:D


# direct methods
.method public constructor <init>(DD)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    iput-wide p1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;->latitude:D

    .line 446
    iput-wide p3, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;->longitude:D

    .line 447
    return-void
.end method


# virtual methods
.method public getLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 451
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;->latitude:D

    iget-wide v4, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MutableLatLng;->longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method
