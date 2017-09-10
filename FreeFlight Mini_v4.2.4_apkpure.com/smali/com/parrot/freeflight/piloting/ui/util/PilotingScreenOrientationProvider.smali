.class public Lcom/parrot/freeflight/piloting/ui/util/PilotingScreenOrientationProvider;
.super Ljava/lang/Object;
.source "PilotingScreenOrientationProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 11
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/parrot/freeflight/util/AntennaPositionChecker;->checkForceReverseRotation(Landroid/content/Context;I)Z

    move-result v0

    .line 12
    .local v0, "reverseOrientationNeeded":Z
    if-eqz v0, :cond_0

    const/16 v1, 0x8

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
