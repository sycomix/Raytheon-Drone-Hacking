.class public Ljavax/mail/internet/InternetAddress;
.super Ljavax/mail/Address;
.source "InternetAddress.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final rfc822phrase:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x6830565bb828acb7L

.field private static final specialsNoDot:Ljava/lang/String; = "()<>,;:\\\"[]@"

.field private static final specialsNoDotNoAt:Ljava/lang/String; = "()<>,;:\\\"[]"


# instance fields
.field protected address:Ljava/lang/String;

.field protected encodedPersonal:Ljava/lang/String;

.field protected personal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 309
    const-string v0, "()<>@,;:\\\"\t .[]"

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/InternetAddress;->rfc822phrase:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    .line 91
    invoke-static {p1, v3}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    .line 93
    .local v0, "a":[Ljavax/mail/internet/InternetAddress;
    array-length v1, v0

    if-eq v1, v3, :cond_0

    .line 94
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Illegal address"

    invoke-direct {v1, v2, p1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_0
    aget-object v1, v0, v2

    iget-object v1, v1, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 103
    aget-object v1, v0, v2

    iget-object v1, v1, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 104
    aget-object v1, v0, v2

    iget-object v1, v1, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "personal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "personal"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    .line 146
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 147
    invoke-virtual {p0, p2, p3}, Ljavax/mail/internet/InternetAddress;->setPersonal(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 119
    invoke-direct {p0, p1}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 120
    if-eqz p2, :cond_0

    .line 121
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-static {v0, v1, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 122
    :cond_0
    return-void
.end method

.method private static checkAddress(Ljava/lang/String;ZZ)V
    .locals 7
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "routeAddr"    # Z
    .param p2, "validate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x40

    .line 872
    const/4 v3, 0x0

    .line 873
    .local v3, "start":I
    const/16 v4, 0x22

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_1

    .line 935
    :cond_0
    return-void

    .line 875
    :cond_1
    if-eqz p1, :cond_3

    .line 880
    const/4 v3, 0x0

    :goto_0
    const-string v4, ",:"

    invoke-static {p0, v4, v3}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .local v1, "i":I
    if-ltz v1, :cond_3

    .line 882
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_2

    .line 883
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Illegal route-addr"

    invoke-direct {v4, v5, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 884
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_4

    .line 886
    add-int/lit8 v3, v1, 0x1

    .line 897
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .restart local v1    # "i":I
    if-ltz v1, :cond_7

    .line 898
    if-ne v1, v3, :cond_5

    .line 899
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Missing local name"

    invoke-direct {v4, v5, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 881
    :cond_4
    add-int/lit8 v3, v1, 0x1

    goto :goto_0

    .line 900
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_6

    .line 901
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Missing domain"

    invoke-direct {v4, v5, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 902
    :cond_6
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 903
    .local v2, "local":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 925
    .local v0, "domain":Ljava/lang/String;
    :goto_1
    const-string v4, " \t\n\r"

    invoke-static {p0, v4}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_9

    .line 926
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Illegal whitespace in address"

    invoke-direct {v4, v5, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 914
    .end local v0    # "domain":Ljava/lang/String;
    .end local v2    # "local":Ljava/lang/String;
    :cond_7
    if-eqz p2, :cond_8

    .line 915
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Missing final \'@domain\'"

    invoke-direct {v4, v5, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 921
    :cond_8
    move-object v2, p0

    .line 922
    .restart local v2    # "local":Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0    # "domain":Ljava/lang/String;
    goto :goto_1

    .line 928
    :cond_9
    const-string v4, "()<>,;:\\\"[]@"

    invoke-static {v2, v4}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_a

    .line 929
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Illegal character in local name"

    invoke-direct {v4, v5, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 931
    :cond_a
    if-eqz v0, :cond_0

    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    .line 932
    const-string v4, "()<>,;:\\\"[]@"

    invoke-static {v0, v4}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 933
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Illegal character in domain"

    invoke-direct {v4, v5, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method public static getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;
    .locals 6
    .param p0, "session"    # Ljavax/mail/Session;

    .prologue
    .line 488
    const/4 v3, 0x0

    .local v3, "user":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "host":Ljava/lang/String;
    const/4 v0, 0x0

    .line 490
    .local v0, "address":Ljava/lang/String;
    if-nez p0, :cond_2

    .line 491
    :try_start_0
    const-string v4, "user.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 492
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 510
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 512
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    :cond_1
    if-eqz v0, :cond_8

    .line 515
    new-instance v4, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v4, v0}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 519
    :goto_1
    return-object v4

    .line 494
    :cond_2
    const-string v4, "mail.from"

    invoke-virtual {p0, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    if-nez v0, :cond_0

    .line 496
    const-string v4, "mail.user"

    invoke-virtual {p0, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 497
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 498
    :cond_3
    const-string v4, "user.name"

    invoke-virtual {p0, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 499
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    .line 500
    :cond_5
    const-string v4, "user.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 501
    :cond_6
    const-string v4, "mail.host"

    invoke-virtual {p0, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 502
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 503
    :cond_7
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    .line 504
    .local v2, "me":Ljava/net/InetAddress;
    if-eqz v2, :cond_0

    .line 505
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 518
    .end local v2    # "me":Ljava/net/InetAddress;
    :catch_0
    move-exception v4

    .line 519
    :cond_8
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 517
    :catch_1
    move-exception v4

    goto :goto_2

    .line 516
    :catch_2
    move-exception v4

    goto :goto_2
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;

    .prologue
    .line 993
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;
    .param p2, "start"    # I

    .prologue
    const/4 v3, -0x1

    .line 998
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 999
    .local v2, "len":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1000
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ltz v4, :cond_0

    .line 1005
    .end local v1    # "i":I
    .end local v2    # "len":I
    :goto_1
    return v1

    .line 999
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 1003
    goto :goto_1

    .line 1004
    .end local v1    # "i":I
    .end local v2    # "len":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    move v1, v3

    .line 1005
    goto :goto_1
.end method

.method private isSimple()Z
    .locals 2

    .prologue
    .line 942
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const-string v1, "()<>,;:\\\"[]"

    invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static lengthOfFirstSegment(Ljava/lang/String;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 455
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 458
    .end local v0    # "pos":I
    :goto_0
    return v0

    .restart local v0    # "pos":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method private static lengthOfLastSegment(Ljava/lang/String;I)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "used"    # I

    .prologue
    .line 468
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 469
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x2

    .line 471
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .param p0, "addresslist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 532
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .param p0, "addresslist"    # Ljava/lang/String;
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 555
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;
    .locals 22
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "strict"    # Z
    .param p2, "parseHdr"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 594
    const/16 v18, -0x1

    .local v18, "start_personal":I
    const/4 v7, -0x1

    .line 595
    .local v7, "end_personal":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    .line 596
    .local v11, "length":I
    const/4 v8, 0x0

    .line 597
    .local v8, "in_group":Z
    const/4 v15, 0x0

    .line 598
    .local v15, "route_addr":Z
    const/4 v14, 0x0

    .line 600
    .local v14, "rfc822":Z
    new-instance v19, Ljava/util/Vector;

    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    .line 603
    .local v19, "v":Ljava/util/Vector;
    const/4 v6, -0x1

    .local v6, "end":I
    move/from16 v17, v6

    .local v17, "start":I
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_0
    if-ge v9, v11, :cond_1d

    .line 604
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 606
    .local v5, "c":C
    sparse-switch v5, :sswitch_data_0

    .line 802
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 803
    move/from16 v17, v9

    .line 603
    :cond_0
    :goto_1
    :sswitch_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 610
    :sswitch_1
    const/4 v14, 0x1

    .line 611
    if-ltz v17, :cond_1

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_1

    .line 612
    move v6, v9

    .line 613
    :cond_1
    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 614
    add-int/lit8 v18, v9, 0x1

    .line 615
    :cond_2
    add-int/lit8 v9, v9, 0x1

    const/4 v13, 0x1

    .local v13, "nesting":I
    :goto_2
    if-ge v9, v11, :cond_3

    if-lez v13, :cond_3

    .line 617
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 618
    sparse-switch v5, :sswitch_data_1

    .line 616
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 620
    :sswitch_2
    add-int/lit8 v9, v9, 0x1

    .line 621
    goto :goto_3

    .line 623
    :sswitch_3
    add-int/lit8 v13, v13, 0x1

    .line 624
    goto :goto_3

    .line 626
    :sswitch_4
    add-int/lit8 v13, v13, -0x1

    .line 627
    goto :goto_3

    .line 632
    :cond_3
    if-lez v13, :cond_4

    .line 633
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Missing \')\'"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 634
    :cond_4
    add-int/lit8 v9, v9, -0x1

    .line 635
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v7, v0, :cond_0

    .line 636
    move v7, v9

    goto :goto_1

    .line 640
    .end local v13    # "nesting":I
    :sswitch_5
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Missing \'(\'"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 643
    :sswitch_6
    const/4 v14, 0x1

    .line 644
    if-eqz v15, :cond_5

    .line 645
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Extra route-addr"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 646
    :cond_5
    if-nez v8, :cond_7

    .line 647
    move/from16 v18, v17

    .line 648
    if-ltz v18, :cond_6

    .line 649
    move v7, v9

    .line 650
    :cond_6
    add-int/lit8 v17, v9, 0x1

    .line 653
    :cond_7
    const/4 v10, 0x0

    .line 655
    .local v10, "inquote":Z
    add-int/lit8 v9, v9, 0x1

    :goto_4
    if-ge v9, v11, :cond_a

    .line 656
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 657
    sparse-switch v5, :sswitch_data_2

    .line 655
    :cond_8
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 659
    :sswitch_7
    add-int/lit8 v9, v9, 0x1

    .line 660
    goto :goto_5

    .line 662
    :sswitch_8
    if-nez v10, :cond_9

    const/4 v10, 0x1

    .line 663
    :goto_6
    goto :goto_5

    .line 662
    :cond_9
    const/4 v10, 0x0

    goto :goto_6

    .line 665
    :sswitch_9
    if-nez v10, :cond_8

    .line 672
    :cond_a
    if-lt v9, v11, :cond_c

    .line 673
    if-eqz v10, :cond_b

    .line 674
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Missing \'\"\'"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 676
    :cond_b
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Missing \'>\'"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 678
    :cond_c
    const/4 v15, 0x1

    .line 679
    move v6, v9

    .line 680
    goto/16 :goto_1

    .line 682
    .end local v10    # "inquote":Z
    :sswitch_a
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Missing \'<\'"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 685
    :sswitch_b
    const/4 v14, 0x1

    .line 686
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 687
    move/from16 v17, v9

    .line 689
    :cond_d
    add-int/lit8 v9, v9, 0x1

    :goto_7
    if-ge v9, v11, :cond_e

    .line 690
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 691
    sparse-switch v5, :sswitch_data_3

    .line 689
    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 693
    :sswitch_c
    add-int/lit8 v9, v9, 0x1

    .line 694
    goto :goto_8

    .line 701
    :cond_e
    :sswitch_d
    if-lt v9, v11, :cond_0

    .line 702
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Missing \'\"\'"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 706
    :sswitch_e
    const/4 v14, 0x1

    .line 708
    add-int/lit8 v9, v9, 0x1

    :goto_9
    if-ge v9, v11, :cond_f

    .line 709
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 710
    packed-switch v5, :pswitch_data_0

    .line 708
    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 712
    :pswitch_0
    add-int/lit8 v9, v9, 0x1

    .line 713
    goto :goto_a

    .line 720
    :cond_f
    :pswitch_1
    if-lt v9, v11, :cond_0

    .line 721
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Missing \']\'"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 725
    :sswitch_f
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 726
    const/4 v15, 0x0

    .line 727
    const/4 v14, 0x0

    .line 728
    const/4 v6, -0x1

    move/from16 v17, v6

    .line 729
    goto/16 :goto_1

    .line 731
    :cond_10
    if-eqz v8, :cond_11

    .line 732
    const/4 v15, 0x0

    .line 733
    goto/16 :goto_1

    .line 736
    :cond_11
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_12

    .line 737
    move v6, v9

    .line 738
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 739
    .local v4, "addr":Ljava/lang/String;
    if-nez v14, :cond_13

    if-nez p1, :cond_13

    if-eqz p2, :cond_18

    .line 740
    :cond_13
    if-nez p1, :cond_14

    if-nez p2, :cond_15

    .line 741
    :cond_14
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v4, v15, v0}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 742
    :cond_15
    new-instance v12, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v12}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 743
    .local v12, "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v12, v4}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 744
    if-ltz v18, :cond_16

    .line 745
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v12, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 747
    const/4 v7, -0x1

    move/from16 v18, v7

    .line 749
    :cond_16
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 762
    .end local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    :cond_17
    const/4 v15, 0x0

    .line 763
    const/4 v14, 0x0

    .line 764
    const/4 v6, -0x1

    move/from16 v17, v6

    .line 765
    goto/16 :goto_1

    .line 752
    :cond_18
    new-instance v16, Ljava/util/StringTokenizer;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 753
    .local v16, "st":Ljava/util/StringTokenizer;
    :goto_b
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v20

    if-eqz v20, :cond_17

    .line 754
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 755
    .local v3, "a":Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 756
    new-instance v12, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v12}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 757
    .restart local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v12, v3}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 758
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_b

    .line 768
    .end local v3    # "a":Ljava/lang/String;
    .end local v4    # "addr":Ljava/lang/String;
    .end local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    .end local v16    # "st":Ljava/util/StringTokenizer;
    :sswitch_10
    const/4 v14, 0x1

    .line 769
    if-eqz v8, :cond_19

    .line 770
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Nested group"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 771
    :cond_19
    const/4 v8, 0x1

    .line 772
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 773
    move/from16 v17, v9

    goto/16 :goto_1

    .line 777
    :sswitch_11
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_1a

    .line 778
    move/from16 v17, v9

    .line 779
    :cond_1a
    if-nez v8, :cond_1b

    .line 780
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Illegal semicolon, not in group"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 782
    :cond_1b
    const/4 v8, 0x0

    .line 783
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_1c

    .line 784
    move/from16 v17, v9

    .line 785
    :cond_1c
    new-instance v12, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v12}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 786
    .restart local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    add-int/lit8 v6, v9, 0x1

    .line 787
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 788
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 790
    const/4 v15, 0x0

    .line 791
    const/4 v6, -0x1

    move/from16 v17, v6

    .line 792
    goto/16 :goto_1

    .line 808
    .end local v5    # "c":C
    .end local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    :cond_1d
    if-ltz v17, :cond_23

    .line 814
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_1e

    .line 815
    move v6, v9

    .line 816
    :cond_1e
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 817
    .restart local v4    # "addr":Ljava/lang/String;
    if-nez v14, :cond_1f

    if-nez p1, :cond_1f

    if-eqz p2, :cond_24

    .line 818
    :cond_1f
    if-nez p1, :cond_20

    if-nez p2, :cond_21

    .line 819
    :cond_20
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v4, v15, v0}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 820
    :cond_21
    new-instance v12, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v12}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 821
    .restart local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v12, v4}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 822
    if-ltz v18, :cond_22

    .line 823
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v12, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 826
    :cond_22
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 840
    .end local v4    # "addr":Ljava/lang/String;
    .end local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    :cond_23
    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v3, v0, [Ljavax/mail/internet/InternetAddress;

    .line 841
    .local v3, "a":[Ljavax/mail/internet/InternetAddress;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 842
    return-object v3

    .line 829
    .end local v3    # "a":[Ljavax/mail/internet/InternetAddress;
    .restart local v4    # "addr":Ljava/lang/String;
    :cond_24
    new-instance v16, Ljava/util/StringTokenizer;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 830
    .restart local v16    # "st":Ljava/util/StringTokenizer;
    :goto_c
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v20

    if-eqz v20, :cond_23

    .line 831
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 832
    .local v3, "a":Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 833
    new-instance v12, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v12}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 834
    .restart local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v12, v3}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 835
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_c

    .line 606
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_b
        0x28 -> :sswitch_1
        0x29 -> :sswitch_5
        0x2c -> :sswitch_f
        0x3a -> :sswitch_10
        0x3b -> :sswitch_11
        0x3c -> :sswitch_6
        0x3e -> :sswitch_a
        0x5b -> :sswitch_e
    .end sparse-switch

    .line 618
    :sswitch_data_1
    .sparse-switch
        0x28 -> :sswitch_3
        0x29 -> :sswitch_4
        0x5c -> :sswitch_2
    .end sparse-switch

    .line 657
    :sswitch_data_2
    .sparse-switch
        0x22 -> :sswitch_8
        0x3e -> :sswitch_9
        0x5c -> :sswitch_7
    .end sparse-switch

    .line 691
    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_d
        0x5c -> :sswitch_c
    .end sparse-switch

    .line 710
    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .param p0, "addresslist"    # Ljava/lang/String;
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 580
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static quotePhrase(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "phrase"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x22

    .line 313
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 314
    .local v4, "len":I
    const/4 v5, 0x0

    .line 316
    .local v5, "needQuoting":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_9

    .line 317
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 318
    .local v0, "c":C
    if-eq v0, v8, :cond_0

    if-ne v0, v9, :cond_5

    .line 320
    :cond_0
    new-instance v6, Ljava/lang/StringBuffer;

    add-int/lit8 v7, v4, 0x3

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 321
    .local v6, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 322
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 323
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 324
    .local v1, "cc":C
    if-eq v1, v8, :cond_1

    if-ne v1, v9, :cond_2

    .line 326
    :cond_1
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 327
    :cond_2
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 322
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 329
    .end local v1    # "cc":C
    :cond_3
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 330
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 342
    .end local v0    # "c":C
    .end local v3    # "j":I
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .end local p0    # "phrase":Ljava/lang/String;
    :cond_4
    :goto_2
    return-object p0

    .line 331
    .restart local v0    # "c":C
    .restart local p0    # "phrase":Ljava/lang/String;
    :cond_5
    const/16 v7, 0x20

    if-ge v0, v7, :cond_6

    const/16 v7, 0xd

    if-eq v0, v7, :cond_6

    const/16 v7, 0xa

    if-eq v0, v7, :cond_6

    const/16 v7, 0x9

    if-ne v0, v7, :cond_7

    :cond_6
    const/16 v7, 0x7f

    if-ge v0, v7, :cond_7

    sget-object v7, Ljavax/mail/internet/InternetAddress;->rfc822phrase:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_8

    .line 334
    :cond_7
    const/4 v5, 0x1

    .line 316
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    .end local v0    # "c":C
    :cond_9
    if-eqz v5, :cond_4

    .line 338
    new-instance v6, Ljava/lang/StringBuffer;

    add-int/lit8 v7, v4, 0x2

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 339
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 340
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method

.method public static toString([Ljavax/mail/Address;)Ljava/lang/String;
    .locals 1
    .param p0, "addresses"    # [Ljavax/mail/Address;

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([Ljavax/mail/Address;I)Ljava/lang/String;
    .locals 6
    .param p0, "addresses"    # [Ljavax/mail/Address;
    .param p1, "used"    # I

    .prologue
    .line 426
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_1

    .line 427
    :cond_0
    const/4 v4, 0x0

    .line 447
    :goto_0
    return-object v4

    .line 429
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 431
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, p0

    if-ge v0, v4, :cond_4

    .line 432
    if-eqz v0, :cond_2

    .line 433
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    add-int/lit8 p1, p1, 0x2

    .line 437
    :cond_2
    aget-object v4, p0, v0

    invoke-virtual {v4}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljavax/mail/internet/InternetAddress;->lengthOfFirstSegment(Ljava/lang/String;)I

    move-result v1

    .line 439
    .local v1, "len":I
    add-int v4, p1, v1

    const/16 v5, 0x4c

    if-le v4, v5, :cond_3

    .line 440
    const-string v4, "\r\n\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    const/16 p1, 0x8

    .line 443
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 444
    invoke-static {v2, p1}, Ljavax/mail/internet/InternetAddress;->lengthOfLastSegment(Ljava/lang/String;I)I

    move-result p1

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 447
    .end local v1    # "len":I
    .end local v2    # "s":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x5c

    .line 346
    const-string v3, "\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 347
    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 349
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_2

    .line 350
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 351
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 352
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 353
    .local v0, "c":C
    if-ne v0, v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 354
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 355
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 360
    .end local v1    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 157
    .local v1, "a":Ljavax/mail/internet/InternetAddress;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljavax/mail/internet/InternetAddress;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-object v1

    .line 158
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "a"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 367
    instance-of v3, p1, Ljavax/mail/internet/InternetAddress;

    if-nez v3, :cond_1

    .line 376
    .end local p1    # "a":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 370
    .restart local p1    # "a":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljavax/mail/internet/InternetAddress;

    .end local p1    # "a":Ljava/lang/Object;
    invoke-virtual {p1}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "s":Ljava/lang/String;
    iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-ne v0, v3, :cond_2

    move v1, v2

    .line 372
    goto :goto_0

    .line 373
    :cond_2
    iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 374
    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup(Z)[Ljavax/mail/internet/InternetAddress;
    .locals 6
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 972
    const/4 v1, 0x0

    .line 973
    .local v1, "groups":Ljava/util/Vector;
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 975
    .local v0, "addr":Ljava/lang/String;
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 983
    :cond_0
    :goto_0
    return-object v4

    .line 977
    :cond_1
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 978
    .local v2, "ix":I
    if-ltz v2, :cond_0

    .line 981
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 983
    .local v3, "list":Ljava/lang/String;
    invoke-static {v3, p1}, Ljavax/mail/internet/InternetAddress;->parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v4

    goto :goto_0
.end method

.method public getPersonal()Ljava/lang/String;
    .locals 2

    .prologue
    .line 237
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 252
    :goto_0
    return-object v1

    .line 240
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 242
    :try_start_0
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 243
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 248
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_0

    .line 252
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-string v0, "rfc822"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 384
    const/4 v0, 0x0

    .line 386
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isGroup()Z
    .locals 2

    .prologue
    .line 956
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setPersonal(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 214
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 215
    if-eqz p1, :cond_0

    .line 216
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPersonal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 194
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 195
    if-eqz p1, :cond_0

    .line 196
    invoke-static {p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 265
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_0
    :goto_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 269
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->quotePhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    :goto_1
    return-object v0

    .line 270
    :cond_1
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    :cond_2
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    goto :goto_1

    .line 273
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 266
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toUnicodeString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 284
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getPersonal()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "p":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 286
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->quotePhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    :goto_0
    return-object v1

    .line 287
    :cond_0
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    :cond_1
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    goto :goto_0

    .line 290
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 856
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 857
    return-void
.end method
