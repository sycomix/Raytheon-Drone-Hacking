.class public Lorg/apache/sanselan/ImageReadException;
.super Lorg/apache/sanselan/SanselanException;
.source "ImageReadException.java"


# static fields
.field static final serialVersionUID:J = -0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/apache/sanselan/SanselanException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/apache/sanselan/SanselanException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 31
    return-void
.end method
