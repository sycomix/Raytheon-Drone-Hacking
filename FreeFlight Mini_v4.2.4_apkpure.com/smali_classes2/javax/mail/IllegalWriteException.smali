.class public Ljavax/mail/IllegalWriteException;
.super Ljavax/mail/MessagingException;
.source "IllegalWriteException.java"


# static fields
.field private static final serialVersionUID:J = 0x3727cca9375f0eedL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljavax/mail/MessagingException;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method
