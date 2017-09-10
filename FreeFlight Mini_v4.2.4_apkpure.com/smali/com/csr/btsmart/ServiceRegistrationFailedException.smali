.class public Lcom/csr/btsmart/ServiceRegistrationFailedException;
.super Ljava/lang/Exception;
.source "ServiceRegistrationFailedException.java"


# static fields
.field private static final serialVersionUID:J = -0x5e47e503d8d9c12fL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method
