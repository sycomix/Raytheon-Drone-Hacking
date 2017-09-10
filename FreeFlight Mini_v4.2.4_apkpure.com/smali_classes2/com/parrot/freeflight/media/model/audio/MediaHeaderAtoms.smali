.class public Lcom/parrot/freeflight/media/model/audio/MediaHeaderAtoms;
.super Ljava/lang/Object;
.source "MediaHeaderAtoms.java"


# instance fields
.field public final mTimescale:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "timescale"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/parrot/freeflight/media/model/audio/MediaHeaderAtoms;->mTimescale:I

    .line 13
    return-void
.end method
