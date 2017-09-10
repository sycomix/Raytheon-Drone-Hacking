.class public abstract Lorg/apache/sanselan/palette/Palette;
.super Ljava/lang/Object;
.source "Palette.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public abstract getEntry(I)I
.end method

.method public abstract getPaletteIndex(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation
.end method

.method public abstract length()I
.end method
