.class public Lcom/sun/mail/smtp/SMTPAddressSucceededException;
.super Ljavax/mail/MessagingException;
.source "SMTPAddressSucceededException.java"


# static fields
.field private static final serialVersionUID:J = -0x1036c343a388c3adL


# instance fields
.field protected addr:Ljavax/mail/internet/InternetAddress;

.field protected cmd:Ljava/lang/String;

.field protected rc:I


# direct methods
.method public constructor <init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "addr"    # Ljavax/mail/internet/InternetAddress;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "rc"    # I
    .param p4, "err"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPAddressSucceededException;->addr:Ljavax/mail/internet/InternetAddress;

    .line 63
    iput-object p2, p0, Lcom/sun/mail/smtp/SMTPAddressSucceededException;->cmd:Ljava/lang/String;

    .line 64
    iput p3, p0, Lcom/sun/mail/smtp/SMTPAddressSucceededException;->rc:I

    .line 65
    return-void
.end method


# virtual methods
.method public getAddress()Ljavax/mail/internet/InternetAddress;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPAddressSucceededException;->addr:Ljavax/mail/internet/InternetAddress;

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPAddressSucceededException;->cmd:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnCode()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/sun/mail/smtp/SMTPAddressSucceededException;->rc:I

    return v0
.end method
