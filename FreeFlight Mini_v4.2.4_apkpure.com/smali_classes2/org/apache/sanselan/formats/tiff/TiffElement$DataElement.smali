.class public abstract Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;
.super Lorg/apache/sanselan/formats/tiff/TiffElement;
.source "TiffElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/tiff/TiffElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DataElement"
.end annotation


# instance fields
.field public final data:[B


# direct methods
.method public constructor <init>(II[B)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "data"    # [B

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/apache/sanselan/formats/tiff/TiffElement;-><init>(II)V

    .line 57
    iput-object p3, p0, Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;->data:[B

    .line 58
    return-void
.end method
