.class Lcom/sun/mail/iap/AString;
.super Ljava/lang/Object;
.source "Argument.java"


# instance fields
.field bytes:[B


# direct methods
.method constructor <init>([B)V
    .locals 0
    .param p1, "b"    # [B

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lcom/sun/mail/iap/AString;->bytes:[B

    .line 296
    return-void
.end method
