.class Lcom/google/gdata/wireformats/ObjectConverter$DateTimeConverter;
.super Lcom/google/gdata/wireformats/ObjectConverter;
.source "ObjectConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/wireformats/ObjectConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateTimeConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/wireformats/ObjectConverter",
        "<",
        "Lcom/google/gdata/data/DateTime;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/google/gdata/wireformats/ObjectConverter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/wireformats/ObjectConverter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/wireformats/ObjectConverter$1;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/google/gdata/wireformats/ObjectConverter$DateTimeConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convertValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/gdata/data/DateTime;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/DateTime;",
            ">;)",
            "Lcom/google/gdata/data/DateTime;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 157
    .local p2, "datatype":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/DateTime;>;"
    :try_start_0
    invoke-static {p1}, Lcom/google/gdata/data/DateTime;->parseDateTimeChoice(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->invalidDatetime:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic convertValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/wireformats/ObjectConverter$DateTimeConverter;->convertValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/gdata/data/DateTime;

    move-result-object v0

    return-object v0
.end method
