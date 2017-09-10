.class public Ljavax/activation/MimeTypeParameterList;
.super Ljava/lang/Object;
.source "MimeTypeParameterList.java"


# static fields
.field private static final TSPECIALS:Ljava/lang/String; = "()<>@,;:/[]?=\\\""


# instance fields
.field private parameters:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "parameterList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    .line 66
    invoke-virtual {p0, p1}, Ljavax/activation/MimeTypeParameterList;->parse(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method private static isTokenChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 263
    const/16 v0, 0x20

    if-le p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_0

    const-string v0, "()<>@,;:/[]?=\\\""

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x5c

    const/16 v10, 0x22

    .line 281
    const/4 v4, 0x0

    .line 284
    .local v4, "needsQuotes":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 285
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    if-nez v4, :cond_1

    .line 286
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljavax/activation/MimeTypeParameterList;->isTokenChar(C)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v4, 0x1

    .line 285
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 289
    :cond_1
    if-eqz v4, :cond_5

    .line 290
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 291
    .local v0, "buffer":Ljava/lang/StringBuffer;
    int-to-double v6, v3

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 294
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 297
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_4

    .line 298
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 299
    .local v1, "c":C
    if-eq v1, v11, :cond_2

    if-ne v1, v10, :cond_3

    .line 300
    :cond_2
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 301
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 305
    .end local v1    # "c":C
    :cond_4
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 309
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local p0    # "value":Ljava/lang/String;
    :cond_5
    return-object p0
.end method

.method private static skipWhiteSpace(Ljava/lang/String;I)I
    .locals 2
    .param p0, "rawdata"    # Ljava/lang/String;
    .param p1, "i"    # I

    .prologue
    .line 271
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 272
    .local v0, "length":I
    :goto_0
    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 274
    :cond_0
    return p1
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 319
    .local v4, "valueLength":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 320
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 322
    const/4 v2, 0x0

    .line 323
    .local v2, "escaped":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 324
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 325
    .local v1, "currentChar":C
    if-nez v2, :cond_0

    const/16 v5, 0x5c

    if-eq v1, v5, :cond_0

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 323
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 327
    :cond_0
    if-eqz v2, :cond_1

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 329
    const/4 v2, 0x0

    .line 330
    goto :goto_1

    .line 331
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 335
    .end local v1    # "currentChar":C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected parse(Ljava/lang/String;)V
    .locals 9
    .param p1, "parameterList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x22

    .line 75
    if-nez p1, :cond_1

    .line 177
    :cond_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 79
    .local v3, "length":I
    if-lez v3, :cond_0

    .line 84
    const/4 v6, 0x0

    invoke-static {p1, v6}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    .line 85
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_e

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    const/16 v6, 0x3b

    if-ne v0, v6, :cond_e

    .line 92
    add-int/lit8 v1, v1, 0x1

    .line 97
    invoke-static {p1, v1}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    .line 100
    if-ge v1, v3, :cond_0

    .line 104
    move v2, v1

    .line 105
    .local v2, "lastIndex":I
    :goto_1
    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljavax/activation/MimeTypeParameterList;->isTokenChar(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    :cond_2
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "name":Ljava/lang/String;
    invoke-static {p1, v1}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    .line 113
    if-ge v1, v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3d

    if-eq v6, v7, :cond_4

    .line 114
    :cond_3
    new-instance v6, Ljavax/activation/MimeTypeParseException;

    const-string v7, "Couldn\'t find the \'=\' that separates a parameter name from its value."

    invoke-direct {v6, v7}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 119
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 120
    invoke-static {p1, v1}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    .line 122
    if-lt v1, v3, :cond_5

    .line 123
    new-instance v6, Ljavax/activation/MimeTypeParseException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Couldn\'t find a value for parameter named "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 127
    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 128
    if-ne v0, v8, :cond_b

    .line 130
    add-int/lit8 v1, v1, 0x1

    .line 131
    if-lt v1, v3, :cond_6

    .line 132
    new-instance v6, Ljavax/activation/MimeTypeParseException;

    const-string v7, "Encountered unterminated quoted parameter value."

    invoke-direct {v6, v7}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 135
    :cond_6
    move v2, v1

    .line 138
    :goto_2
    if-ge v1, v3, :cond_7

    .line 139
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 140
    if-ne v0, v8, :cond_8

    .line 150
    :cond_7
    if-eq v0, v8, :cond_a

    .line 151
    new-instance v6, Ljavax/activation/MimeTypeParseException;

    const-string v7, "Encountered unterminated quoted parameter value."

    invoke-direct {v6, v7}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 142
    :cond_8
    const/16 v6, 0x5c

    if-ne v0, v6, :cond_9

    .line 146
    add-int/lit8 v1, v1, 0x1

    .line 148
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 149
    goto :goto_2

    .line 154
    :cond_a
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljavax/activation/MimeTypeParameterList;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, "value":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 171
    :goto_3
    iget-object v6, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v6, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {p1, v1}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    goto/16 :goto_0

    .line 157
    .end local v5    # "value":Ljava/lang/String;
    :cond_b
    invoke-static {v0}, Ljavax/activation/MimeTypeParameterList;->isTokenChar(C)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 160
    move v2, v1

    .line 161
    :goto_4
    if-ge v1, v3, :cond_c

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljavax/activation/MimeTypeParameterList;->isTokenChar(C)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 163
    :cond_c
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 164
    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_3

    .line 166
    .end local v5    # "value":Ljava/lang/String;
    :cond_d
    new-instance v6, Ljavax/activation/MimeTypeParseException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Unexpected character encountered at index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 173
    .end local v0    # "c":C
    .end local v2    # "lastIndex":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_e
    if-ge v1, v3, :cond_0

    .line 174
    new-instance v6, Ljavax/activation/MimeTypeParseException;

    const-string v7, "More characters encountered in input than expected."

    invoke-direct {v6, v7}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 242
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v3, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 245
    iget-object v3, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 246
    .local v2, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 248
    .local v1, "key":Ljava/lang/String;
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 251
    iget-object v3, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljavax/activation/MimeTypeParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 254
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
