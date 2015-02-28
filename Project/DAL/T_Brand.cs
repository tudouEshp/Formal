﻿using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using EShop.DBUtility;//Please add references
namespace EShop.DAL
{
	/// <summary>
	/// 数据访问类:T_Brand
	/// </summary>
	public partial class T_Brand
	{
		public T_Brand()
		{}
		#region  BasicMethod

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(long BraID)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from T_Brand");
			strSql.Append(" where BraID=@BraID ");
			SqlParameter[] parameters = {
					new SqlParameter("@BraID", SqlDbType.BigInt,8)			};
			parameters[0].Value = BraID;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(EShop.Model.T_Brand model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into T_Brand(");
			strSql.Append("BraID,BraName,BraLogo)");
			strSql.Append(" values (");
			strSql.Append("@BraID,@BraName,@BraLogo)");
			SqlParameter[] parameters = {
					new SqlParameter("@BraID", SqlDbType.BigInt,8),
					new SqlParameter("@BraName", SqlDbType.NVarChar,20),
					new SqlParameter("@BraLogo", SqlDbType.NVarChar,-1)};
			parameters[0].Value = model.BraID;
			parameters[1].Value = model.BraName;
			parameters[2].Value = model.BraLogo;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		/// <summary>
		/// 更新一条数据
		/// </summary>
		public bool Update(EShop.Model.T_Brand model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update T_Brand set ");
			strSql.Append("BraName=@BraName,");
			strSql.Append("BraLogo=@BraLogo");
			strSql.Append(" where BraID=@BraID ");
			SqlParameter[] parameters = {
					new SqlParameter("@BraName", SqlDbType.NVarChar,20),
					new SqlParameter("@BraLogo", SqlDbType.NVarChar,-1),
					new SqlParameter("@BraID", SqlDbType.BigInt,8)};
			parameters[0].Value = model.BraName;
			parameters[1].Value = model.BraLogo;
			parameters[2].Value = model.BraID;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(long BraID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from T_Brand ");
			strSql.Append(" where BraID=@BraID ");
			SqlParameter[] parameters = {
					new SqlParameter("@BraID", SqlDbType.BigInt,8)			};
			parameters[0].Value = BraID;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		/// <summary>
		/// 批量删除数据
		/// </summary>
		public bool DeleteList(string BraIDlist )
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from T_Brand ");
			strSql.Append(" where BraID in ("+BraIDlist + ")  ");
			int rows=DbHelperSQL.ExecuteSql(strSql.ToString());
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public EShop.Model.T_Brand GetModel(long BraID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 BraID,BraName,BraLogo from T_Brand ");
			strSql.Append(" where BraID=@BraID ");
			SqlParameter[] parameters = {
					new SqlParameter("@BraID", SqlDbType.BigInt,8)			};
			parameters[0].Value = BraID;

			EShop.Model.T_Brand model=new EShop.Model.T_Brand();
			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				return DataRowToModel(ds.Tables[0].Rows[0]);
			}
			else
			{
				return null;
			}
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public EShop.Model.T_Brand DataRowToModel(DataRow row)
		{
			EShop.Model.T_Brand model=new EShop.Model.T_Brand();
			if (row != null)
			{
				if(row["BraID"]!=null && row["BraID"].ToString()!="")
				{
					model.BraID=long.Parse(row["BraID"].ToString());
				}
				if(row["BraName"]!=null)
				{
					model.BraName=row["BraName"].ToString();
				}
				if(row["BraLogo"]!=null)
				{
					model.BraLogo=row["BraLogo"].ToString();
				}
			}
			return model;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select BraID,BraName,BraLogo ");
			strSql.Append(" FROM T_Brand ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			return DbHelperSQL.Query(strSql.ToString());
		}

		/// <summary>
		/// 获得前几行数据
		/// </summary>
		public DataSet GetList(int Top,string strWhere,string filedOrder)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select ");
			if(Top>0)
			{
				strSql.Append(" top "+Top.ToString());
			}
			strSql.Append(" BraID,BraName,BraLogo ");
			strSql.Append(" FROM T_Brand ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			strSql.Append(" order by " + filedOrder);
			return DbHelperSQL.Query(strSql.ToString());
		}

		/// <summary>
		/// 获取记录总数
		/// </summary>
		public int GetRecordCount(string strWhere)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) FROM T_Brand ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			object obj = DbHelperSQL.GetSingle(strSql.ToString());
			if (obj == null)
			{
				return 0;
			}
			else
			{
				return Convert.ToInt32(obj);
			}
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("SELECT * FROM ( ");
			strSql.Append(" SELECT ROW_NUMBER() OVER (");
			if (!string.IsNullOrEmpty(orderby.Trim()))
			{
				strSql.Append("order by T." + orderby );
			}
			else
			{
				strSql.Append("order by T.BraID desc");
			}
			strSql.Append(")AS Row, T.*  from T_Brand T ");
			if (!string.IsNullOrEmpty(strWhere.Trim()))
			{
				strSql.Append(" WHERE " + strWhere);
			}
			strSql.Append(" ) TT");
			strSql.AppendFormat(" WHERE TT.Row between {0} and {1}", startIndex, endIndex);
			return DbHelperSQL.Query(strSql.ToString());
		}

		/*
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		{
			SqlParameter[] parameters = {
					new SqlParameter("@tblName", SqlDbType.VarChar, 255),
					new SqlParameter("@fldName", SqlDbType.VarChar, 255),
					new SqlParameter("@PageSize", SqlDbType.Int),
					new SqlParameter("@PageIndex", SqlDbType.Int),
					new SqlParameter("@IsReCount", SqlDbType.Bit),
					new SqlParameter("@OrderType", SqlDbType.Bit),
					new SqlParameter("@strWhere", SqlDbType.VarChar,1000),
					};
			parameters[0].Value = "T_Brand";
			parameters[1].Value = "BraID";
			parameters[2].Value = PageSize;
			parameters[3].Value = PageIndex;
			parameters[4].Value = 0;
			parameters[5].Value = 0;
			parameters[6].Value = strWhere;	
			return DbHelperSQL.RunProcedure("UP_GetRecordByPage",parameters,"ds");
		}*/

		#endregion  BasicMethod
		#region  ExtensionMethod

		#endregion  ExtensionMethod
	}
}

