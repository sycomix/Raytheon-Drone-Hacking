.class public Lorg/mortbay/jetty/servlet/FilterMapping;
.super Ljava/lang/Object;
.source "FilterMapping.java"


# instance fields
.field private _dispatches:I

.field private _filterName:Ljava/lang/String;

.field private transient _holder:Lorg/mortbay/jetty/servlet/FilterHolder;

.field private _pathSpecs:[Ljava/lang/String;

.field private _servletNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_dispatches:I

    .line 33
    return-void
.end method


# virtual methods
.method appliesTo(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 60
    iget v1, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_dispatches:I

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_dispatches:I

    if-nez v1, :cond_1

    if-ne p1, v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method appliesTo(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x1

    .line 43
    iget v2, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_dispatches:I

    and-int/2addr v2, p2

    if-nez v2, :cond_0

    iget v2, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_dispatches:I

    if-nez v2, :cond_2

    if-ne p2, v1, :cond_2

    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 46
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2, p1, v1}, Lorg/mortbay/jetty/servlet/PathMap;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 45
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "i":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDispatches()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_dispatches:I

    return v0
.end method

.method getFilterHolder()Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_holder:Lorg/mortbay/jetty/servlet/FilterHolder;

    return-object v0
.end method

.method public getFilterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_filterName:Ljava/lang/String;

    return-object v0
.end method

.method public getPathSpecs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    return-object v0
.end method

.method public getServletNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_servletNames:[Ljava/lang/String;

    return-object v0
.end method

.method public setDispatches(I)V
    .locals 0
    .param p1, "dispatches"    # I

    .prologue
    .line 113
    iput p1, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_dispatches:I

    .line 114
    return-void
.end method

.method setFilterHolder(Lorg/mortbay/jetty/servlet/FilterHolder;)V
    .locals 0
    .param p1, "holder"    # Lorg/mortbay/jetty/servlet/FilterHolder;

    .prologue
    .line 131
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_holder:Lorg/mortbay/jetty/servlet/FilterHolder;

    .line 132
    return-void
.end method

.method public setFilterName(Ljava/lang/String;)V
    .locals 0
    .param p1, "filterName"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_filterName:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setPathSpec(Ljava/lang/String;)V
    .locals 2
    .param p1, "pathSpec"    # Ljava/lang/String;

    .prologue
    .line 149
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setPathSpecs([Ljava/lang/String;)V
    .locals 0
    .param p1, "pathSpecs"    # [Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setServletName(Ljava/lang/String;)V
    .locals 2
    .param p1, "servletName"    # Ljava/lang/String;

    .prologue
    .line 178
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_servletNames:[Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setServletNames([Ljava/lang/String;)V
    .locals 0
    .param p1, "servletNames"    # [Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_servletNames:[Ljava/lang/String;

    .line 169
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "(F="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_filterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "[]"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_servletNames:[Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "[]"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_dispatches:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->_servletNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
