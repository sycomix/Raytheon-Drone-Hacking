.class public Lcom/parrot/arsdk/arutils/ARUtilsMD5;
.super Ljava/lang/Object;
.source "ARUtilsMD5.java"


# static fields
.field public static final MD5_LENGTH:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ARUtilsMD5"


# instance fields
.field digest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsMD5;->digest:Ljava/security/MessageDigest;

    .line 49
    invoke-virtual {p0}, Lcom/parrot/arsdk/arutils/ARUtilsMD5;->initialize()Z

    .line 50
    return-void
.end method

.method public static getTextDigest([BII)Ljava/lang/String;
    .locals 7
    .param p0, "hash"    # [B
    .param p1, "index"    # I
    .param p2, "len"    # I

    .prologue
    .line 75
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v1, "txt":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 79
    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int v6, p1, v0

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "val":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v2    # "val":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public digest()Ljava/lang/String;
    .locals 3

    .prologue
    .line 87
    iget-object v1, p0, Lcom/parrot/arsdk/arutils/ARUtilsMD5;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 88
    .local v0, "hash":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/parrot/arsdk/arutils/ARUtilsMD5;->getTextDigest([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public initialize()Z
    .locals 4

    .prologue
    .line 54
    const/4 v1, 0x1

    .line 57
    .local v1, "ret":Z
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/arutils/ARUtilsMD5;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return v1

    .line 59
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "ARUtilsMD5"

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public update([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "index"    # I
    .param p3, "len"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/parrot/arsdk/arutils/ARUtilsMD5;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 71
    return-void
.end method
