.class public Lorg/apache/sanselan/formats/psd/ImageResourceType;
.super Ljava/lang/Object;
.source "ImageResourceType.java"


# instance fields
.field public final Description:Ljava/lang/String;

.field public final ID:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 3
    .param p1, "ID"    # I
    .param p2, "ID2"    # I
    .param p3, "Description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p3}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    .line 38
    if-eq p1, p2, :cond_0

    .line 39
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Mismatch ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ID2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "ID"    # I
    .param p2, "Description"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lorg/apache/sanselan/formats/psd/ImageResourceType;->ID:I

    .line 31
    iput-object p2, p0, Lorg/apache/sanselan/formats/psd/ImageResourceType;->Description:Ljava/lang/String;

    .line 32
    return-void
.end method
