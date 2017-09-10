.class Lorg/apache/sanselan/formats/gif/GraphicControlExtension;
.super Lorg/apache/sanselan/formats/gif/GIFBlock;
.source "GraphicControlExtension.java"


# instance fields
.field public final delay:I

.field public final dispose:I

.field public final packed:I

.field public final transparency:Z

.field public final transparentColorIndex:I


# direct methods
.method public constructor <init>(IIIZII)V
    .locals 0
    .param p1, "blockCode"    # I
    .param p2, "packed"    # I
    .param p3, "dispose"    # I
    .param p4, "transparency"    # Z
    .param p5, "delay"    # I
    .param p6, "transparentColorIndex"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/gif/GIFBlock;-><init>(I)V

    .line 33
    iput p2, p0, Lorg/apache/sanselan/formats/gif/GraphicControlExtension;->packed:I

    .line 34
    iput p3, p0, Lorg/apache/sanselan/formats/gif/GraphicControlExtension;->dispose:I

    .line 35
    iput-boolean p4, p0, Lorg/apache/sanselan/formats/gif/GraphicControlExtension;->transparency:Z

    .line 36
    iput p5, p0, Lorg/apache/sanselan/formats/gif/GraphicControlExtension;->delay:I

    .line 37
    iput p6, p0, Lorg/apache/sanselan/formats/gif/GraphicControlExtension;->transparentColorIndex:I

    .line 39
    return-void
.end method
