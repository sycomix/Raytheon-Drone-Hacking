.class abstract Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;
.super Ljava/lang/Object;
.source "TiffOutputItem.java"

# interfaces
.implements Lorg/apache/sanselan/formats/tiff/constants/AllTagConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;
    }
.end annotation


# static fields
.field public static final UNDEFINED_VALUE:I = -0x1


# instance fields
.field private offset:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;->offset:I

    .line 48
    return-void
.end method


# virtual methods
.method public abstract getItemDescription()Ljava/lang/String;
.end method

.method public abstract getItemLength()I
.end method

.method protected getOffset()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;->offset:I

    return v0
.end method

.method protected setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 38
    iput p1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;->offset:I

    .line 39
    return-void
.end method

.method public abstract writeItem(Lorg/apache/sanselan/common/BinaryOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation
.end method
