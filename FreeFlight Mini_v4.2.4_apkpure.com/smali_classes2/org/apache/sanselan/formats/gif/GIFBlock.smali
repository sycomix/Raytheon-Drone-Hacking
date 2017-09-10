.class Lorg/apache/sanselan/formats/gif/GIFBlock;
.super Ljava/lang/Object;
.source "GIFBlock.java"


# instance fields
.field public final blockCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "blockCode"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lorg/apache/sanselan/formats/gif/GIFBlock;->blockCode:I

    .line 26
    return-void
.end method
