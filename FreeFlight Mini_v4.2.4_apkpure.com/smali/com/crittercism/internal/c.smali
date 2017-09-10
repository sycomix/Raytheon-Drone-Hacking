.class public final Lcom/crittercism/internal/c;
.super Lcom/crittercism/internal/bn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crittercism/internal/c$a;
    }
.end annotation


# static fields
.field private static final s:Ljava/util/Set;


# instance fields
.field public a:J

.field b:Z

.field c:Lcom/crittercism/internal/c$a;

.field public d:J

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Lcom/crittercism/internal/cl;

.field public h:Lcom/crittercism/internal/k;

.field public i:Ljava/lang/String;

.field public j:Lcom/crittercism/internal/b;

.field private k:J

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:J

.field private p:Z

.field private q:Z

.field private r:[D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 464
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 466
    sput-object v0, Lcom/crittercism/internal/c;->s:Ljava/util/Set;

    const-string v1, "GET"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 467
    sget-object v0, Lcom/crittercism/internal/c;->s:Ljava/util/Set;

    const-string v1, "POST"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 468
    sget-object v0, Lcom/crittercism/internal/c;->s:Ljava/util/Set;

    const-string v1, "HEAD"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 469
    sget-object v0, Lcom/crittercism/internal/c;->s:Ljava/util/Set;

    const-string v1, "PUT"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 470
    sget-object v0, Lcom/crittercism/internal/c;->s:Ljava/util/Set;

    const-string v1, "DELETE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 471
    sget-object v0, Lcom/crittercism/internal/c;->s:Ljava/util/Set;

    const-string v1, "TRACE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 472
    sget-object v0, Lcom/crittercism/internal/c;->s:Ljava/util/Set;

    const-string v1, "OPTIONS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 473
    sget-object v0, Lcom/crittercism/internal/c;->s:Ljava/util/Set;

    const-string v1, "CONNECT"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 474
    sget-object v0, Lcom/crittercism/internal/c;->s:Ljava/util/Set;

    const-string v1, "PATCH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 475
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Lcom/crittercism/internal/bn;-><init>()V

    .line 30
    iput-wide v4, p0, Lcom/crittercism/internal/c;->a:J

    .line 31
    iput-wide v4, p0, Lcom/crittercism/internal/c;->k:J

    .line 35
    iput-boolean v1, p0, Lcom/crittercism/internal/c;->l:Z

    .line 36
    iput-boolean v1, p0, Lcom/crittercism/internal/c;->m:Z

    .line 38
    iput-boolean v1, p0, Lcom/crittercism/internal/c;->b:Z

    .line 74
    sget-object v0, Lcom/crittercism/internal/c$a;->a:Lcom/crittercism/internal/c$a;

    iput-object v0, p0, Lcom/crittercism/internal/c;->c:Lcom/crittercism/internal/c$a;

    .line 76
    iput-wide v2, p0, Lcom/crittercism/internal/c;->o:J

    .line 78
    iput-wide v2, p0, Lcom/crittercism/internal/c;->d:J

    .line 80
    iput-boolean v1, p0, Lcom/crittercism/internal/c;->p:Z

    .line 81
    iput-boolean v1, p0, Lcom/crittercism/internal/c;->q:Z

    .line 83
    iput v1, p0, Lcom/crittercism/internal/c;->e:I

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/crittercism/internal/c;->f:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/crittercism/internal/cl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/crittercism/internal/cl;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/crittercism/internal/c;->g:Lcom/crittercism/internal/cl;

    .line 95
    new-instance v0, Lcom/crittercism/internal/k;

    invoke-direct {v0}, Lcom/crittercism/internal/k;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/c;->h:Lcom/crittercism/internal/k;

    .line 104
    sget-object v0, Lcom/crittercism/internal/b;->a:Lcom/crittercism/internal/b;

    iput-object v0, p0, Lcom/crittercism/internal/c;->j:Lcom/crittercism/internal/b;

    .line 150
    sget-object v0, Lcom/crittercism/internal/ce;->a:Lcom/crittercism/internal/ce;

    invoke-virtual {v0}, Lcom/crittercism/internal/ce;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/c;->n:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Lcom/crittercism/internal/bn;-><init>()V

    .line 30
    iput-wide v4, p0, Lcom/crittercism/internal/c;->a:J

    .line 31
    iput-wide v4, p0, Lcom/crittercism/internal/c;->k:J

    .line 35
    iput-boolean v1, p0, Lcom/crittercism/internal/c;->l:Z

    .line 36
    iput-boolean v1, p0, Lcom/crittercism/internal/c;->m:Z

    .line 38
    iput-boolean v1, p0, Lcom/crittercism/internal/c;->b:Z

    .line 74
    sget-object v0, Lcom/crittercism/internal/c$a;->a:Lcom/crittercism/internal/c$a;

    iput-object v0, p0, Lcom/crittercism/internal/c;->c:Lcom/crittercism/internal/c$a;

    .line 76
    iput-wide v2, p0, Lcom/crittercism/internal/c;->o:J

    .line 78
    iput-wide v2, p0, Lcom/crittercism/internal/c;->d:J

    .line 80
    iput-boolean v1, p0, Lcom/crittercism/internal/c;->p:Z

    .line 81
    iput-boolean v1, p0, Lcom/crittercism/internal/c;->q:Z

    .line 83
    iput v1, p0, Lcom/crittercism/internal/c;->e:I

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/crittercism/internal/c;->f:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/crittercism/internal/cl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/crittercism/internal/cl;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/crittercism/internal/c;->g:Lcom/crittercism/internal/cl;

    .line 95
    new-instance v0, Lcom/crittercism/internal/k;

    invoke-direct {v0}, Lcom/crittercism/internal/k;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/c;->h:Lcom/crittercism/internal/k;

    .line 104
    sget-object v0, Lcom/crittercism/internal/b;->a:Lcom/crittercism/internal/b;

    iput-object v0, p0, Lcom/crittercism/internal/c;->j:Lcom/crittercism/internal/b;

    .line 154
    sget-object v0, Lcom/crittercism/internal/ce;->a:Lcom/crittercism/internal/ce;

    invoke-virtual {v0}, Lcom/crittercism/internal/ce;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/c;->n:Ljava/lang/String;

    .line 155
    if-eqz p1, :cond_0

    .line 156
    iput-object p1, p0, Lcom/crittercism/internal/c;->i:Ljava/lang/String;

    .line 158
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 478
    if-nez p0, :cond_1

    .line 486
    :cond_0
    :goto_0
    return v0

    .line 482
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 483
    sget-object v2, Lcom/crittercism/internal/c;->s:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private f()J
    .locals 4

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 241
    .line 243
    iget-wide v2, p0, Lcom/crittercism/internal/c;->a:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/crittercism/internal/c;->k:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 244
    iget-wide v0, p0, Lcom/crittercism/internal/c;->k:J

    iget-wide v2, p0, Lcom/crittercism/internal/c;->a:J

    sub-long/2addr v0, v2

    .line 247
    :cond_0
    return-wide v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 222
    iget-object v6, p0, Lcom/crittercism/internal/c;->i:Ljava/lang/String;

    .line 224
    if-nez v6, :cond_1

    .line 225
    iget-object v8, p0, Lcom/crittercism/internal/c;->h:Lcom/crittercism/internal/k;

    .line 2101
    const-string/jumbo v0, "unknown-host"

    .line 2103
    iget-object v3, v8, Lcom/crittercism/internal/k;->b:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 2104
    iget-object v0, v8, Lcom/crittercism/internal/k;->b:Ljava/lang/String;

    move-object v6, v0

    .line 1121
    :goto_0
    iget-boolean v0, v8, Lcom/crittercism/internal/k;->f:Z

    if-eqz v0, :cond_3

    .line 1123
    iget v0, v8, Lcom/crittercism/internal/k;->e:I

    .line 2170
    if-lez v0, :cond_0

    .line 2173
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2174
    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 226
    :cond_0
    :goto_1
    iput-object v6, p0, Lcom/crittercism/internal/c;->i:Ljava/lang/String;

    .line 229
    :cond_1
    return-object v6

    .line 2105
    :cond_2
    iget-object v3, v8, Lcom/crittercism/internal/k;->a:Ljava/net/InetAddress;

    if-eqz v3, :cond_c

    .line 2106
    iget-object v0, v8, Lcom/crittercism/internal/k;->a:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 1126
    :cond_3
    iget-object v0, v8, Lcom/crittercism/internal/k;->c:Ljava/lang/String;

    .line 1127
    const-string v7, ""

    .line 3113
    if-eqz v0, :cond_5

    const-string v3, "http:"

    const/4 v5, 0x5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "https:"

    const/4 v5, 0x6

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1129
    :cond_4
    :goto_2
    if-eqz v1, :cond_6

    move-object v6, v0

    .line 1132
    goto :goto_1

    :cond_5
    move v1, v2

    .line 3113
    goto :goto_2

    .line 1135
    :cond_6
    iget-object v1, v8, Lcom/crittercism/internal/k;->d:Lcom/crittercism/internal/k$a;

    if-eqz v1, :cond_b

    .line 1136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/crittercism/internal/k;->d:Lcom/crittercism/internal/k$a;

    invoke-static {v2}, Lcom/crittercism/internal/k$a;->a(Lcom/crittercism/internal/k$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1139
    :goto_3
    const-string v2, "//"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1143
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1144
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 1148
    :cond_8
    const-string v1, ""

    .line 1149
    iget v2, v8, Lcom/crittercism/internal/k;->e:I

    if-lez v2, :cond_a

    .line 1152
    iget-object v2, v8, Lcom/crittercism/internal/k;->d:Lcom/crittercism/internal/k$a;

    if-eqz v2, :cond_9

    iget-object v2, v8, Lcom/crittercism/internal/k;->d:Lcom/crittercism/internal/k$a;

    invoke-static {v2}, Lcom/crittercism/internal/k$a;->b(Lcom/crittercism/internal/k$a;)I

    move-result v2

    iget v4, v8, Lcom/crittercism/internal/k;->e:I

    if-eq v2, v4, :cond_a

    .line 1157
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v8, Lcom/crittercism/internal/k;->e:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1158
    invoke-virtual {v6, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object v1, v2

    .line 1166
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_b
    move-object v1, v7

    goto/16 :goto_3

    :cond_c
    move-object v6, v0

    goto/16 :goto_0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 386
    sget v0, Lcom/crittercism/internal/cm;->e:I

    add-int/lit8 v0, v0, -0x1

    .line 387
    new-instance v1, Lcom/crittercism/internal/cl;

    invoke-direct {v1, v0, p1}, Lcom/crittercism/internal/cl;-><init>(II)V

    .line 388
    iput-object v1, p0, Lcom/crittercism/internal/c;->g:Lcom/crittercism/internal/cl;

    .line 389
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/internal/c;->p:Z

    .line 195
    iput-wide p1, p0, Lcom/crittercism/internal/c;->o:J

    .line 197
    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 4

    .prologue
    .line 289
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    iput-object v0, p0, Lcom/crittercism/internal/c;->r:[D

    .line 293
    return-void
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/crittercism/internal/c;->d()Lorg/json/JSONArray;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 437
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 233
    if-nez p1, :cond_0

    .line 234
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 237
    :cond_0
    iput-object p1, p0, Lcom/crittercism/internal/c;->i:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 382
    new-instance v0, Lcom/crittercism/internal/cl;

    invoke-direct {v0, p1}, Lcom/crittercism/internal/cl;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/crittercism/internal/c;->g:Lcom/crittercism/internal/cl;

    .line 383
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/crittercism/internal/c;->l:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/crittercism/internal/c;->a:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 261
    iput-wide v0, p0, Lcom/crittercism/internal/c;->a:J

    .line 263
    :cond_0
    return-void
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/internal/c;->q:Z

    .line 211
    iput-wide p1, p0, Lcom/crittercism/internal/c;->d:J

    .line 212
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/internal/c;->i:Ljava/lang/String;

    .line 411
    iget-object v0, p0, Lcom/crittercism/internal/c;->h:Lcom/crittercism/internal/k;

    .line 6087
    iput-object p1, v0, Lcom/crittercism/internal/k;->b:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/crittercism/internal/c;->m:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/crittercism/internal/c;->k:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 4251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 272
    iput-wide v0, p0, Lcom/crittercism/internal/c;->k:J

    .line 274
    :cond_0
    return-void
.end method

.method public final c(J)V
    .locals 1

    .prologue
    .line 255
    iput-wide p1, p0, Lcom/crittercism/internal/c;->a:J

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/internal/c;->l:Z

    .line 257
    return-void
.end method

.method public final d()Lorg/json/JSONArray;
    .locals 6

    .prologue
    .line 343
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/crittercism/internal/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 350
    invoke-virtual {p0}, Lcom/crittercism/internal/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 351
    sget-object v1, Lcom/crittercism/internal/eb;->a:Lcom/crittercism/internal/eb;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/crittercism/internal/c;->a:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/crittercism/internal/eb;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 352
    invoke-direct {p0}, Lcom/crittercism/internal/c;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 353
    iget-object v1, p0, Lcom/crittercism/internal/c;->j:Lcom/crittercism/internal/b;

    .line 5029
    iget v1, v1, Lcom/crittercism/internal/b;->e:I

    .line 353
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 354
    iget-wide v2, p0, Lcom/crittercism/internal/c;->o:J

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 355
    iget-wide v2, p0, Lcom/crittercism/internal/c;->d:J

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 356
    iget v1, p0, Lcom/crittercism/internal/c;->e:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 357
    iget-object v1, p0, Lcom/crittercism/internal/c;->g:Lcom/crittercism/internal/cl;

    .line 6008
    iget v1, v1, Lcom/crittercism/internal/cl;->a:I

    .line 357
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 358
    iget-object v1, p0, Lcom/crittercism/internal/c;->g:Lcom/crittercism/internal/cl;

    .line 6012
    iget v1, v1, Lcom/crittercism/internal/cl;->b:I

    .line 358
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 359
    iget-object v1, p0, Lcom/crittercism/internal/c;->r:[D

    if-eqz v1, :cond_0

    .line 360
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 361
    iget-object v2, p0, Lcom/crittercism/internal/c;->r:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 362
    iget-object v2, p0, Lcom/crittercism/internal/c;->r:[D

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 363
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :cond_0
    :goto_0
    return-object v0

    .line 365
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 366
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Failed to create statsArray"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    const/4 v0, 0x0

    .line 368
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final d(J)V
    .locals 1

    .prologue
    .line 266
    iput-wide p1, p0, Lcom/crittercism/internal/c;->k:J

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/internal/c;->m:Z

    .line 268
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/crittercism/internal/c;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 301
    const-string v0, ""

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "URI            : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/crittercism/internal/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "URI Builder    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/crittercism/internal/c;->h:Lcom/crittercism/internal/k;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Logged by      : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/crittercism/internal/c;->c:Lcom/crittercism/internal/c$a;

    invoke-virtual {v1}, Lcom/crittercism/internal/c$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Error type:         : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/crittercism/internal/c;->g:Lcom/crittercism/internal/cl;

    .line 5008
    iget v1, v1, Lcom/crittercism/internal/cl;->a:I

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Error code:         : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/crittercism/internal/c;->g:Lcom/crittercism/internal/cl;

    .line 5012
    iget v1, v1, Lcom/crittercism/internal/cl;->b:I

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Response time  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/crittercism/internal/c;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Start time     : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/crittercism/internal/c;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "End time       : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/crittercism/internal/c;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Bytes out    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/crittercism/internal/c;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Bytes in     : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/crittercism/internal/c;->o:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Response code  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/crittercism/internal/c;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Request method : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/crittercism/internal/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/crittercism/internal/c;->r:[D

    if-eqz v1, :cond_0

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Location       : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/crittercism/internal/c;->r:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    :cond_0
    return-object v0
.end method
