.class public final Lcom/crittercism/internal/n;
.super Ljava/security/Provider$Service;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:Lcom/crittercism/internal/e;

.field private c:Lcom/crittercism/internal/d;

.field private d:Ljava/security/Provider$Service;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Default"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SSL"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TLSv1.1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TLSv1.2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SSLv3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "TLSv1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TLS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/crittercism/internal/n;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/security/Provider$Service;Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 52
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getClassName()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 60
    iput-object p2, p0, Lcom/crittercism/internal/n;->b:Lcom/crittercism/internal/e;

    .line 61
    iput-object p3, p0, Lcom/crittercism/internal/n;->c:Lcom/crittercism/internal/d;

    .line 62
    iput-object p1, p0, Lcom/crittercism/internal/n;->d:Ljava/security/Provider$Service;

    .line 63
    return-void
.end method

.method private static a(Ljava/security/Provider$Service;Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)Lcom/crittercism/internal/n;
    .locals 5

    .prologue
    .line 70
    new-instance v0, Lcom/crittercism/internal/n;

    invoke-direct {v0, p0, p1, p2}, Lcom/crittercism/internal/n;-><init>(Ljava/security/Provider$Service;Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)V

    .line 76
    :try_start_0
    const-class v1, Ljava/security/Provider$Service;

    .line 1114
    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1116
    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 1117
    aget-object v3, v2, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1118
    aget-object v3, v2, v1

    aget-object v4, v2, v1

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 82
    :cond_0
    return-object v0
.end method

.method private static a()Ljava/security/Provider;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 95
    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 101
    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v0

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 115
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    invoke-static {}, Lcom/crittercism/internal/o;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-static {}, Lcom/crittercism/internal/n;->a()Ljava/security/Provider;

    move-result-object v2

    .line 127
    if-eqz v2, :cond_0

    move v1, v0

    .line 132
    :goto_1
    sget-object v3, Lcom/crittercism/internal/n;->a:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 133
    sget-object v3, Lcom/crittercism/internal/n;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 134
    const-string v4, "SSLContext"

    invoke-virtual {v2, v4, v3}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v3

    .line 136
    if-eqz v3, :cond_2

    instance-of v4, v3, Lcom/crittercism/internal/n;

    if-nez v4, :cond_2

    .line 137
    invoke-static {v3, p0, p1}, Lcom/crittercism/internal/n;->a(Ljava/security/Provider$Service;Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)Lcom/crittercism/internal/n;

    move-result-object v3

    .line 141
    if-eqz v3, :cond_2

    .line 142
    invoke-direct {v3}, Lcom/crittercism/internal/n;->b()Z

    move-result v3

    or-int/2addr v1, v3

    .line 132
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 147
    goto :goto_0
.end method

.method private b()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/crittercism/internal/n;->getProvider()Ljava/security/Provider;

    move-result-object v2

    .line 177
    if-nez v2, :cond_0

    .line 202
    :goto_0
    return v0

    .line 182
    :cond_0
    :try_start_0
    const-class v3, Ljava/security/Provider;

    const-string v4, "putService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/security/Provider$Service;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 183
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 184
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v3, "SSLContext.DummySSLAlgorithm"

    .line 192
    invoke-virtual {p0}, Lcom/crittercism/internal/n;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/crittercism/internal/n;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/crittercism/internal/n;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 195
    invoke-virtual {v2, v4}, Ljava/security/Provider;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-virtual {v2, v3}, Ljava/security/Provider;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 202
    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "constructorParameter"    # Ljava/lang/Object;

    .prologue
    .line 231
    invoke-super {p0, p1}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1246
    :try_start_0
    instance-of v1, v2, Ljavax/net/ssl/SSLContextSpi;

    if-eqz v1, :cond_0

    .line 1247
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/SSLContextSpi;

    move-object v1, v0

    .line 1248
    iget-object v3, p0, Lcom/crittercism/internal/n;->b:Lcom/crittercism/internal/e;

    iget-object v4, p0, Lcom/crittercism/internal/n;->c:Lcom/crittercism/internal/d;

    invoke-static {v1, v3, v4}, Lcom/crittercism/internal/o;->a(Ljavax/net/ssl/SSLContextSpi;Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)Lcom/crittercism/internal/o;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1251
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 241
    :cond_0
    :goto_0
    return-object v2

    .line 236
    :catch_0
    move-exception v1

    throw v1

    .line 238
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
