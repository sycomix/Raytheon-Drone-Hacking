.class public Lcom/google/gdata/util/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field public static final ANY:I = -0x1

.field private static final VERSION_PROPERTY_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private impliedVersions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/Version;",
            ">;"
        }
    .end annotation
.end field

.field private major:I

.field private minor:I

.field private serviceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/client/Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-string v0, "([^\\d]+-)?(\\d+)(\\.\\d+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/Version;->VERSION_PROPERTY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;II[Lcom/google/gdata/util/Version;)V
    .locals 3
    .param p2, "major"    # I
    .param p3, "minor"    # I
    .param p4, "impliedVersions"    # [Lcom/google/gdata/util/Version;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/client/Service;",
            ">;II[",
            "Lcom/google/gdata/util/Version;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/client/Service;>;"
    const/4 v1, -0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/util/Version;->impliedVersions:Ljava/util/List;

    .line 95
    if-nez p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null service class"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    if-gez p2, :cond_1

    if-eq p2, v1, :cond_1

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid major version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    if-gez p3, :cond_2

    if-eq p3, v1, :cond_2

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid minor version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_2
    iput-object p1, p0, Lcom/google/gdata/util/Version;->serviceClass:Ljava/lang/Class;

    .line 105
    iput p2, p0, Lcom/google/gdata/util/Version;->major:I

    .line 106
    iput p3, p0, Lcom/google/gdata/util/Version;->minor:I

    .line 109
    invoke-direct {p0, p4}, Lcom/google/gdata/util/Version;->computeImpliedVersions([Lcom/google/gdata/util/Version;)V

    .line 110
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Lcom/google/gdata/util/Version;)V
    .locals 5
    .param p2, "versionDescription"    # Ljava/lang/String;
    .param p3, "impliedVersions"    # [Lcom/google/gdata/util/Version;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/client/Service;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Lcom/google/gdata/util/Version;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/client/Service;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/gdata/util/Version;->impliedVersions:Ljava/util/List;

    .line 125
    iput-object p1, p0, Lcom/google/gdata/util/Version;->serviceClass:Ljava/lang/Class;

    .line 126
    sget-object v2, Lcom/google/gdata/util/Version;->VERSION_PROPERTY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 127
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Version description does not match expected format[{service}]{major}[.{minor}]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "minorValue":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/gdata/util/Version;->major:I

    .line 135
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/google/gdata/util/Version;->minor:I

    .line 139
    invoke-direct {p0, p3}, Lcom/google/gdata/util/Version;->computeImpliedVersions([Lcom/google/gdata/util/Version;)V

    .line 140
    return-void

    .line 135
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private addImpliedVersion(Lcom/google/gdata/util/Version;)V
    .locals 3
    .param p1, "v"    # Lcom/google/gdata/util/Version;

    .prologue
    .line 320
    iget-object v2, p0, Lcom/google/gdata/util/Version;->impliedVersions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/google/gdata/util/Version;->impliedVersions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-virtual {p1}, Lcom/google/gdata/util/Version;->getImpliedVersions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/util/Version;

    .line 323
    .local v1, "impliedVersion":Lcom/google/gdata/util/Version;
    invoke-direct {p0, v1}, Lcom/google/gdata/util/Version;->addImpliedVersion(Lcom/google/gdata/util/Version;)V

    goto :goto_0

    .line 326
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "impliedVersion":Lcom/google/gdata/util/Version;
    :cond_0
    return-void
.end method

.method public static anyMinorVersionOf(Lcom/google/gdata/util/Version;)Lcom/google/gdata/util/Version;
    .locals 5
    .param p0, "v"    # Lcom/google/gdata/util/Version;

    .prologue
    .line 64
    new-instance v0, Lcom/google/gdata/util/Version;

    invoke-virtual {p0}, Lcom/google/gdata/util/Version;->getServiceClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gdata/util/Version;->getMajor()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/google/gdata/util/Version;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/gdata/util/Version;-><init>(Ljava/lang/Class;II[Lcom/google/gdata/util/Version;)V

    return-object v0
.end method

.method private varargs computeImpliedVersions([Lcom/google/gdata/util/Version;)V
    .locals 5
    .param p1, "versionList"    # [Lcom/google/gdata/util/Version;

    .prologue
    .line 308
    iget-object v4, p0, Lcom/google/gdata/util/Version;->impliedVersions:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    move-object v0, p1

    .local v0, "arr$":[Lcom/google/gdata/util/Version;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 310
    .local v3, "v":Lcom/google/gdata/util/Version;
    invoke-direct {p0, v3}, Lcom/google/gdata/util/Version;->addImpliedVersion(Lcom/google/gdata/util/Version;)V

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    .end local v3    # "v":Lcom/google/gdata/util/Version;
    :cond_0
    return-void
.end method

.method public static findServiceVersion(Ljava/util/Collection;Ljava/lang/Class;)Lcom/google/gdata/util/Version;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/gdata/util/Version;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/client/Service;",
            ">;)",
            "Lcom/google/gdata/util/Version;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "versionList":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/google/gdata/util/Version;>;"
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/client/Service;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/util/Version;

    .line 49
    .local v1, "v":Lcom/google/gdata/util/Version;
    invoke-virtual {v1}, Lcom/google/gdata/util/Version;->getServiceClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    .end local v1    # "v":Lcom/google/gdata/util/Version;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private raiseAny(I)I
    .locals 1
    .param p1, "versionNumber"    # I

    .prologue
    .line 215
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .end local p1    # "versionNumber":I
    :goto_0
    return p1

    .restart local p1    # "versionNumber":I
    :cond_0
    const p1, 0x7fffffff

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 330
    instance-of v2, p1, Lcom/google/gdata/util/Version;

    if-nez v2, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 333
    check-cast v0, Lcom/google/gdata/util/Version;

    .line 334
    .local v0, "v":Lcom/google/gdata/util/Version;
    invoke-virtual {p0, v0}, Lcom/google/gdata/util/Version;->isSameService(Lcom/google/gdata/util/Version;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/gdata/util/Version;->major:I

    iget v3, v0, Lcom/google/gdata/util/Version;->major:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/gdata/util/Version;->minor:I

    iget v3, v0, Lcom/google/gdata/util/Version;->minor:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getImpliedVersions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/Version;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/gdata/util/Version;->impliedVersions:Ljava/util/List;

    return-object v0
.end method

.method public final getMajor()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/google/gdata/util/Version;->major:I

    return v0
.end method

.method public final getMinor()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/google/gdata/util/Version;->minor:I

    return v0
.end method

.method public final getServiceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/client/Service;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/gdata/util/Version;->serviceClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getVersionString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/google/gdata/util/Version;->major:I

    if-eq v1, v2, :cond_0

    .line 168
    iget v1, p0, Lcom/google/gdata/util/Version;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    :cond_0
    iget v1, p0, Lcom/google/gdata/util/Version;->minor:I

    if-eq v1, v2, :cond_1

    .line 171
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    iget v1, p0, Lcom/google/gdata/util/Version;->minor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 339
    iget-object v1, p0, Lcom/google/gdata/util/Version;->serviceClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 340
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/google/gdata/util/Version;->major:I

    add-int v0, v1, v2

    .line 341
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/google/gdata/util/Version;->minor:I

    add-int v0, v1, v2

    .line 342
    return v0
.end method

.method public final isAfter(Lcom/google/gdata/util/Version;)Z
    .locals 7
    .param p1, "v"    # Lcom/google/gdata/util/Version;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 254
    iget-object v3, p0, Lcom/google/gdata/util/Version;->impliedVersions:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/gdata/util/Version;->getServiceClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/google/gdata/util/Version;->findServiceVersion(Ljava/util/Collection;Ljava/lang/Class;)Lcom/google/gdata/util/Version;

    move-result-object v1

    .line 256
    .local v1, "serviceVersion":Lcom/google/gdata/util/Version;
    if-eqz v1, :cond_1

    move v3, v4

    :goto_0
    const-string v6, "No relationship between versions"

    invoke-static {v3, v6}, Lcom/google/gdata/util/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 258
    iget v3, v1, Lcom/google/gdata/util/Version;->major:I

    invoke-direct {p0, v3}, Lcom/google/gdata/util/Version;->raiseAny(I)I

    move-result v0

    .line 259
    .local v0, "serviceMajor":I
    iget v3, p1, Lcom/google/gdata/util/Version;->major:I

    invoke-direct {p0, v3}, Lcom/google/gdata/util/Version;->raiseAny(I)I

    move-result v2

    .line 260
    .local v2, "vMajor":I
    if-eq v0, v2, :cond_3

    .line 261
    if-le v0, v2, :cond_2

    .line 263
    :cond_0
    :goto_1
    return v4

    .end local v0    # "serviceMajor":I
    .end local v2    # "vMajor":I
    :cond_1
    move v3, v5

    .line 256
    goto :goto_0

    .restart local v0    # "serviceMajor":I
    .restart local v2    # "vMajor":I
    :cond_2
    move v4, v5

    .line 261
    goto :goto_1

    .line 263
    :cond_3
    iget v3, v1, Lcom/google/gdata/util/Version;->minor:I

    invoke-direct {p0, v3}, Lcom/google/gdata/util/Version;->raiseAny(I)I

    move-result v3

    iget v6, p1, Lcom/google/gdata/util/Version;->minor:I

    invoke-direct {p0, v6}, Lcom/google/gdata/util/Version;->raiseAny(I)I

    move-result v6

    if-gt v3, v6, :cond_0

    move v4, v5

    goto :goto_1
.end method

.method public final isBefore(Lcom/google/gdata/util/Version;)Z
    .locals 5
    .param p1, "v"    # Lcom/google/gdata/util/Version;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 280
    iget-object v1, p0, Lcom/google/gdata/util/Version;->impliedVersions:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/gdata/util/Version;->getServiceClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/gdata/util/Version;->findServiceVersion(Ljava/util/Collection;Ljava/lang/Class;)Lcom/google/gdata/util/Version;

    move-result-object v0

    .line 282
    .local v0, "serviceVersion":Lcom/google/gdata/util/Version;
    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    const-string v4, "No relationship between versions"

    invoke-static {v1, v4}, Lcom/google/gdata/util/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 287
    iget v1, v0, Lcom/google/gdata/util/Version;->major:I

    iget v4, p1, Lcom/google/gdata/util/Version;->major:I

    if-eq v1, v4, :cond_3

    .line 288
    iget v1, v0, Lcom/google/gdata/util/Version;->major:I

    iget v4, p1, Lcom/google/gdata/util/Version;->major:I

    if-ge v1, v4, :cond_2

    .line 290
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v1, v3

    .line 282
    goto :goto_0

    :cond_2
    move v2, v3

    .line 288
    goto :goto_1

    .line 290
    :cond_3
    iget v1, v0, Lcom/google/gdata/util/Version;->minor:I

    iget v4, p1, Lcom/google/gdata/util/Version;->minor:I

    if-lt v1, v4, :cond_0

    move v2, v3

    goto :goto_1
.end method

.method public final isCompatible(Lcom/google/gdata/util/Version;)Z
    .locals 6
    .param p1, "v"    # Lcom/google/gdata/util/Version;

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    .line 194
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/Version;->isSameService(Lcom/google/gdata/util/Version;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/google/gdata/util/Version;->major:I

    iget v4, p1, Lcom/google/gdata/util/Version;->major:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/google/gdata/util/Version;->major:I

    if-eq v3, v5, :cond_0

    iget v3, p1, Lcom/google/gdata/util/Version;->major:I

    if-ne v3, v5, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v2

    .line 198
    :cond_1
    iget-object v3, p0, Lcom/google/gdata/util/Version;->impliedVersions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/util/Version;

    .line 199
    .local v1, "impliedVersion":Lcom/google/gdata/util/Version;
    if-eq v1, p0, :cond_2

    .line 202
    invoke-virtual {v1, p1}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 207
    .end local v1    # "impliedVersion":Lcom/google/gdata/util/Version;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final isSameService(Lcom/google/gdata/util/Version;)Z
    .locals 2
    .param p1, "v"    # Lcom/google/gdata/util/Version;

    .prologue
    .line 184
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/gdata/util/Version;->serviceClass:Ljava/lang/Class;

    iget-object v1, p1, Lcom/google/gdata/util/Version;->serviceClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final matches(Lcom/google/gdata/util/Version;)Z
    .locals 6
    .param p1, "v"    # Lcom/google/gdata/util/Version;

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    .line 225
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/Version;->isSameService(Lcom/google/gdata/util/Version;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/google/gdata/util/Version;->major:I

    iget v4, p1, Lcom/google/gdata/util/Version;->major:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/google/gdata/util/Version;->major:I

    if-eq v3, v5, :cond_0

    iget v3, p1, Lcom/google/gdata/util/Version;->major:I

    if-ne v3, v5, :cond_2

    :cond_0
    iget v3, p0, Lcom/google/gdata/util/Version;->minor:I

    iget v4, p1, Lcom/google/gdata/util/Version;->minor:I

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/google/gdata/util/Version;->minor:I

    if-eq v3, v5, :cond_1

    iget v3, p1, Lcom/google/gdata/util/Version;->minor:I

    if-ne v3, v5, :cond_2

    .line 238
    :cond_1
    :goto_0
    return v2

    .line 230
    :cond_2
    iget-object v3, p0, Lcom/google/gdata/util/Version;->impliedVersions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/util/Version;

    .line 231
    .local v1, "impliedVersion":Lcom/google/gdata/util/Version;
    if-eq v1, p0, :cond_3

    .line 234
    invoke-virtual {v1, p1}, Lcom/google/gdata/util/Version;->matches(Lcom/google/gdata/util/Version;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 238
    .end local v1    # "impliedVersion":Lcom/google/gdata/util/Version;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/gdata/util/Version;->serviceClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {p0}, Lcom/google/gdata/util/Version;->getVersionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
