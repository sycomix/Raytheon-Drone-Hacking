.class public Lcom/sun/mail/smtp/SMTPSSLTransport;
.super Lcom/sun/mail/smtp/SMTPTransport;
.source "SMTPSSLTransport.java"


# direct methods
.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 6
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "urlname"    # Ljavax/mail/URLName;

    .prologue
    .line 43
    const-string v3, "smtps"

    const/16 v4, 0x1d1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sun/mail/smtp/SMTPTransport;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V

    .line 44
    return-void
.end method
