.class public Lcom/google/gdata/data/Kind;
.super Ljava/lang/Object;
.source "Kind.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/Kind$AdaptorException;,
        Lcom/google/gdata/data/Kind$AdaptableHelper;,
        Lcom/google/gdata/data/Kind$Adaptor;,
        Lcom/google/gdata/data/Kind$Adaptable;,
        Lcom/google/gdata/data/Kind$Term;
    }
.end annotation


# static fields
.field public static final META_DIRECTORY:Ljava/lang/String; = "META-INF/gdata/kinds/"

.field private static kindAdaptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/gdata/data/Kind$Adaptor;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/gdata/data/Kind;->kindAdaptors:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    return-void
.end method

.method public static getAdaptor(Ljava/lang/String;Lcom/google/gdata/data/Kind$Adaptable;)Lcom/google/gdata/data/Kind$Adaptor;
    .locals 10
    .param p0, "kindTerm"    # Ljava/lang/String;
    .param p1, "adaptable"    # Lcom/google/gdata/data/Kind$Adaptable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/Kind$AdaptorException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-static {p0, p1}, Lcom/google/gdata/data/Kind;->getAdaptorClass(Ljava/lang/String;Lcom/google/gdata/data/Kind$Adaptable;)Ljava/lang/Class;

    move-result-object v1

    .line 302
    .local v1, "adaptorClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/google/gdata/data/Kind$Adaptor;>;"
    if-nez v1, :cond_1

    .line 303
    const/4 v0, 0x0

    .line 351
    :cond_0
    :goto_0
    return-object v0

    .line 305
    :cond_1
    invoke-interface {p1, v1}, Lcom/google/gdata/data/Kind$Adaptable;->getAdaptor(Ljava/lang/Class;)Lcom/google/gdata/data/Kind$Adaptor;

    move-result-object v0

    .line 306
    .local v0, "adaptor":Lcom/google/gdata/data/Kind$Adaptor;
    if-nez v0, :cond_0

    .line 310
    const/4 v2, 0x0

    .line 311
    .local v2, "adaptorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 312
    .local v3, "constructorArgClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v3, :cond_2

    .line 314
    const/4 v7, 0x1

    :try_start_0
    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 325
    :cond_2
    if-nez v2, :cond_3

    .line 327
    const/4 v7, 0x0

    :try_start_1
    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 337
    :cond_3
    if-nez v3, :cond_4

    .line 338
    const/4 v7, 0x0

    :try_start_2
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "adaptor":Lcom/google/gdata/data/Kind$Adaptor;
    check-cast v0, Lcom/google/gdata/data/Kind$Adaptor;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 349
    .restart local v0    # "adaptor":Lcom/google/gdata/data/Kind$Adaptor;
    :goto_2
    invoke-interface {p1, v0}, Lcom/google/gdata/data/Kind$Adaptable;->addAdaptor(Lcom/google/gdata/data/Kind$Adaptor;)V

    goto :goto_0

    .line 316
    :catch_0
    move-exception v5

    .line 318
    .local v5, "nsme":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 319
    goto :goto_1

    .line 328
    .end local v5    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v5

    .line 329
    .restart local v5    # "nsme":Ljava/lang/NoSuchMethodException;
    new-instance v7, Lcom/google/gdata/data/Kind$AdaptorException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to construct Adaptor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " instance for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/gdata/data/Kind$AdaptorException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 340
    .end local v5    # "nsme":Ljava/lang/NoSuchMethodException;
    :cond_4
    const/4 v7, 0x1

    :try_start_3
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "adaptor":Lcom/google/gdata/data/Kind$Adaptor;
    check-cast v0, Lcom/google/gdata/data/Kind$Adaptor;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .restart local v0    # "adaptor":Lcom/google/gdata/data/Kind$Adaptor;
    goto :goto_2

    .line 342
    .end local v0    # "adaptor":Lcom/google/gdata/data/Kind$Adaptor;
    :catch_2
    move-exception v6

    .line 343
    .local v6, "re":Ljava/lang/RuntimeException;
    throw v6

    .line 344
    .end local v6    # "re":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v4

    .line 345
    .local v4, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/google/gdata/data/Kind$AdaptorException;

    const-string v8, "Unable to create kind Adaptor"

    invoke-direct {v7, v8, v4}, Lcom/google/gdata/data/Kind$AdaptorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static getAdaptorClass(Ljava/lang/String;Lcom/google/gdata/data/Kind$Adaptable;)Ljava/lang/Class;
    .locals 14
    .param p0, "kindTerm"    # Ljava/lang/String;
    .param p1, "adaptable"    # Lcom/google/gdata/data/Kind$Adaptable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/gdata/data/Kind$Adaptable;",
            ")",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/gdata/data/Kind$Adaptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/Kind$AdaptorException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 239
    .local v4, "cl":Ljava/lang/ClassLoader;
    sget-object v12, Lcom/google/gdata/data/Kind;->kindAdaptors:Ljava/util/Map;

    invoke-interface {v12, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 240
    .local v1, "adaptorList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<Lcom/google/gdata/data/Kind$Adaptor;>;>;"
    if-nez v1, :cond_3

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "adaptorList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<Lcom/google/gdata/data/Kind$Adaptor;>;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .restart local v1    # "adaptorList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<Lcom/google/gdata/data/Kind$Adaptor;>;>;"
    invoke-static {p0}, Lcom/google/gdata/data/Kind;->getKindServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 247
    .local v11, "termService":Ljava/lang/String;
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "META-INF/gdata/kinds/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 249
    .local v10, "serviceStream":Ljava/io/InputStream;
    if-nez v10, :cond_0

    .line 250
    const/4 v12, 0x0

    .line 290
    .end local v10    # "serviceStream":Ljava/io/InputStream;
    .end local v11    # "termService":Ljava/lang/String;
    :goto_0
    return-object v12

    .line 252
    .restart local v10    # "serviceStream":Ljava/io/InputStream;
    .restart local v11    # "termService":Ljava/lang/String;
    :cond_0
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 255
    .local v9, "rdr":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "line":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 256
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x23

    if-eq v12, v13, :cond_1

    .line 260
    invoke-virtual {v4, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 262
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "rdr":Ljava/io/BufferedReader;
    .end local v10    # "serviceStream":Ljava/io/InputStream;
    :catch_0
    move-exception v7

    .line 263
    .local v7, "ioe":Ljava/io/IOException;
    new-instance v12, Lcom/google/gdata/data/Kind$AdaptorException;

    const-string v13, "Unable to load Adaptor service info"

    invoke-direct {v12, v13, v7}, Lcom/google/gdata/data/Kind$AdaptorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 264
    .end local v7    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 265
    .local v5, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v12, Lcom/google/gdata/data/Kind$AdaptorException;

    const-string v13, "Unable to load Adaptor class"

    invoke-direct {v12, v13, v5}, Lcom/google/gdata/data/Kind$AdaptorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 267
    .end local v5    # "cnfe":Ljava/lang/ClassNotFoundException;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v9    # "rdr":Ljava/io/BufferedReader;
    .restart local v10    # "serviceStream":Ljava/io/InputStream;
    :cond_2
    sget-object v12, Lcom/google/gdata/data/Kind;->kindAdaptors:Ljava/util/Map;

    invoke-interface {v12, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "rdr":Ljava/io/BufferedReader;
    .end local v10    # "serviceStream":Ljava/io/InputStream;
    .end local v11    # "termService":Ljava/lang/String;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    .line 273
    const/4 v12, 0x0

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Class;

    goto :goto_0

    .line 276
    :cond_4
    const/4 v2, 0x0

    .line 281
    .local v2, "adaptorclass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/google/gdata/data/Kind$Adaptor;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 282
    .local v0, "adaptorClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/google/gdata/data/Kind$Adaptor;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 283
    .local v3, "checkClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/Kind$Adaptable;>;"
    :goto_2
    const-class v12, Lcom/google/gdata/data/Kind$Adaptable;

    invoke-virtual {v12, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 284
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object v12, v0

    .line 285
    goto :goto_0

    .line 287
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_2

    .line 290
    .end local v0    # "adaptorClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/google/gdata/data/Kind$Adaptor;>;"
    .end local v3    # "checkClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/Kind$Adaptable;>;"
    :cond_7
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public static getKindServiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "kindTerm"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 186
    .local v6, "serviceName":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 189
    .local v7, "termUrl":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\W"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "hostComponents":[Ljava/lang/String;
    array-length v8, v0

    add-int/lit8 v2, v8, -0x1

    .line 191
    .local v2, "lastIndex":I
    move v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 192
    if-eq v1, v2, :cond_0

    .line 193
    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_0
    aget-object v8, v0, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {v7}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\W"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "pathComponents":[Ljava/lang/String;
    const/4 v1, 0x0

    :goto_1
    array-length v8, v4

    if-ge v1, v8, :cond_3

    .line 202
    aget-object v8, v4, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 203
    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    aget-object v8, v4, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 209
    :cond_3
    invoke-virtual {v7}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 210
    invoke-virtual {v7}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\W"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, "refComponents":[Ljava/lang/String;
    const/4 v1, 0x0

    :goto_2
    array-length v8, v5

    if-ge v1, v8, :cond_5

    .line 212
    aget-object v8, v5, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 213
    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    aget-object v8, v5, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 220
    .end local v0    # "hostComponents":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "lastIndex":I
    .end local v4    # "pathComponents":[Ljava/lang/String;
    .end local v5    # "refComponents":[Ljava/lang/String;
    .end local v7    # "termUrl":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 221
    .local v3, "mue":Ljava/net/MalformedURLException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Kind term must be a valid URL"

    invoke-direct {v8, v9, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 223
    .end local v3    # "mue":Ljava/net/MalformedURLException;
    .restart local v0    # "hostComponents":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "lastIndex":I
    .restart local v4    # "pathComponents":[Ljava/lang/String;
    .restart local v7    # "termUrl":Ljava/net/URL;
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static isKindCategory(Lcom/google/gdata/data/Category;)Z
    .locals 2
    .param p0, "category"    # Lcom/google/gdata/data/Category;

    .prologue
    .line 173
    const-string v0, "http://schemas.google.com/g/2005#kind"

    invoke-virtual {p0}, Lcom/google/gdata/data/Category;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
